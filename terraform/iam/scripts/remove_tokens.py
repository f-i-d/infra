import boto3
import sys


def remove_iam_tokens(user_name):
    iam = boto3.client("iam")

    try:
        # ユーザーが存在するか確認
        iam.get_user(UserName=user_name)
    except iam.exceptions.NoSuchEntityException:
        print(f"{user_name} は存在しません。")
        return
    except Exception as e:
        print(f"ユーザー取得時のエラー: {str(e)}")
        return

    # MFAデバイスを取得・削除
    mfa_devices = iam.list_mfa_devices(UserName=user_name)["MFADevices"]
    for mfa in mfa_devices:
        serial_number = mfa["SerialNumber"]
        iam.deactivate_mfa_device(UserName=user_name, SerialNumber=serial_number)
        iam.delete_virtual_mfa_device(SerialNumber=serial_number)
        print(f"MFAデバイスを非アクティブ化して削除しました: {serial_number}")

    # アクセスキーを取得・削除
    access_keys = iam.list_access_keys(UserName=user_name)["AccessKeyMetadata"]
    for key in access_keys:
        access_key_id = key["AccessKeyId"]
        iam.delete_access_key(UserName=user_name, AccessKeyId=access_key_id)
        print(f"アクセスキーを削除しました: {access_key_id}")

    # ログインプロファイルを削除
    try:
        iam.delete_login_profile(UserName=user_name)
        print(f"{user_name}のログインプロファイルを削除しました。")
    except iam.exceptions.NoSuchEntityException:
        print(
            f"{user_name}にはログインプロファイルが存在しません。削除処理をスキップします。"
        )
    except Exception as e:
        print(f"ログインプロファイル削除時のエラー: {str(e)}")


def confirm_execution(user_name):
    response = input(
        f"{user_name} のIAMトークンを本当に削除しますか？ (yes/no): "
    ).lower()
    return response in ("yes", "y")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("使い方: python remove_iam_tokens.py <ユーザー名>")
        sys.exit(1)

    user_name = sys.argv[1]

    if confirm_execution(user_name):
        remove_iam_tokens(user_name)
        print("処理が完了しました。")
    else:
        print("処理をキャンセルしました。")
