.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.super Ljava/lang/Object;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AlternateEmailResetPasswordRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameRequest;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;,
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_AddAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AddAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_AddAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AddAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_AlternateEmailResetPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AlternateEmailResetPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_AssociationInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AssociationInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ConfirmationEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ConfirmationEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ListAssociationsRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ListAssociationsRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ListAssociationsResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ListAssociationsResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewNameRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewNameRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewNameResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewNameResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewOAUTHAccountResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewOAUTHAccountResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewOAUTHAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewOAUTHAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ProviderCredentialsInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ProviderCredentialsInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_RemoveAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_RemoveAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_RemoveAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_RemoveAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ResetEmailAndPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ResetEmailAndPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ResetEmailAndPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ResetEmailAndPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ResetPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ResetPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_TakeAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_TakeAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_TakeAccountResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_TakeAccountResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_TakeAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_TakeAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_TakeAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_TakeAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ValidateNonceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ValidateNonceRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ValidateNonceResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ValidateNonceResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ValidateSNAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ValidateSNAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ValidateSNAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ValidateSNAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_VerifyEmailFromLocalAddedEmailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_VerifyEmailFromLocalAddedEmailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_VerifyEmailFromLocalAddedEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_VerifyEmailFromLocalAddedEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9001
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0017accounts_protocol.proto\u001a\u001bprovisioning_protocol.proto\u001a\u0015clouds_protocol.proto\"S\n\u0012NewPasswordRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u0017\n\u000fcurrentPassword\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bnewPassword\u0018\u0003 \u0002(\t\"\u00bd\u0001\n\u0013NewPasswordResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u0005error\u0018\u0002 \u0001(\u000e2\u001a.NewPasswordResponse.Error\"j\n\u0005Error\u0012\u001d\n\u0019CURRENT_PASSWORD_MISMATCH\u0010\u0000\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0003\"/\n\u000eNewNameRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004name\u0018\u0002 "

    aput-object v2, v1, v4

    const-string v2, "\u0002(\t\"\u0096\u0001\n\u000fNewNameResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012%\n\u0005error\u0018\u0002 \u0001(\u000e2\u0016.NewNameResponse.Error\"K\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0002\"\u00be\u0001\n\u0015ResetPasswordResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012+\n\u0005error\u0018\u0002 \u0001(\u000e2\u001c.ResetPasswordResponse.Error\"g\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0001\u0012 \n\u001cMAX_PASSWORD_RESETS_EXCEEDED\u0010\u0002\u0012\u0011\n\rINVALID_EMAIL\u0010\u0003\"<\n\"AlternateEmailResetPasswordRequest\u0012\u0016\n\u000ealternate"

    aput-object v2, v1, v5

    const-string v2, "Email\u0018\u0001 \u0002(\t\"\u00c9\u0001\n\u0011NewAccountRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\'\n\u000baccountInfo\u0018\u0002 \u0002(\u000b2\u0012.ClientAccountInfo\u0012%\n\ndeviceInfo\u0018\u0003 \u0002(\u000b2\u0011.ClientDeviceInfo\u0012 \n\u0011restoreFromDevice\u0018\u0004 \u0001(\u0008:\u0005false\u00121\n\u0013newAccountSignature\u0018\u0005 \u0001(\u000b2\u0014.NewAccountSignature\"\u008e\u0003\n\u0017NewOAUTHAccountResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012-\n\u0005error\u0018\u0002 \u0001(\u000e2\u001e.NewOAUTHAccountResponse.Error\u0012+\n\u0004data\u0018\u0003 \u0001(\u000b2\u001d.NewOAUTHAccountResponse.Data\u001a\u0084\u0001\n\u0004Data\u0012\'\n\u000baccountInfo\u0018\u0001 \u0002(\u000b2\u0012.ServerAccountIn"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "fo\u0012%\n\ndeviceInfo\u0018\u0002 \u0002(\u000b2\u0011.ServerDeviceInfo\u0012,\n\u000bsessionInfo\u0018\u0003 \u0002(\u000b2\u0017.ServerOAUTHSessionInfo\"\u007f\n\u0005Error\u0012\u0012\n\u000eACCOUNT_EXISTS\u0010\u0000\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0003\u0012\u0010\n\u000cWRONG_DEVICE\u0010\u0004\"[\n\u001cResetEmailAndPasswordRequest\u0012\u0014\n\u000ccurrentEmail\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008newEmail\u0018\u0002 \u0002(\t\u0012\u0013\n\u000bnewPassword\u0018\u0003 \u0002(\t\"\u00ca\u0001\n\u001dResetEmailAndPasswordResponse\u00123\n\u0005error\u0018\u0001 \u0001(\u000e2$.ResetEmailAndPasswordResponse.Error\"t\n\u0005"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0001\u0012\u001b\n\u0017CURRENT_EMAIL_NOT_EXIST\u0010\u0002\u0012\u0015\n\u0011NEW_EMAIL_EXISTED\u0010\u0003\"@\n%VerifyEmailFromLocalAddedEmailRequest\u0012\u0017\n\u000flocalAddedEmail\u0018\u0001 \u0002(\t\"\u00be\u0001\n&VerifyEmailFromLocalAddedEmailResponse\u0012<\n\u0005error\u0018\u0001 \u0001(\u000e2-.VerifyEmailFromLocalAddedEmailResponse.Error\"V\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0014\n\u0010EMAIL_NOT_EXISTS\u0010\u0001\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0002\"\u00a6\u0001\n\u0019ConfirmationEmailRespo"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "nse\u0012/\n\u0005error\u0018\u0001 \u0001(\u000e2 .ConfirmationEmailResponse.Error\"X\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0016\n\u0012ACCOUNT_NOT_EXISTS\u0010\u0001\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0003\"F\n\u0015AddAssociationRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005login\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0003 \u0002(\t\"\u00c6\u0001\n\u0016AddAssociationResponse\u0012,\n\u0005error\u0018\u0001 \u0001(\u000e2\u001d.AddAssociationResponse.Error\"~\n\u0005Error\u0012#\n\u001fCREDENTIAL_VERIFICATION_FAILURE\u0010\u0000\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012 \n\u001cSERVICE_TEMPORA"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RILY_DISABLED\u0010\u0003\"\u00a4\u0001\n\u0017ListAssociationsRequest\u0012%\n\ndeviceInfo\u0018\u0001 \u0002(\u000b2\u0011.ClientDeviceInfo\u0012\'\n\u000bcaptchaInfo\u0018\u0002 \u0001(\u000b2\u0012.ClientCaptchaInfo\u00129\n\u0017providerCredentialsInfo\u0018\u0003 \u0002(\u000b2\u0018.ProviderCredentialsInfo\"H\n\u0017ProviderCredentialsInfo\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005login\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0003 \u0002(\t\"\u00cb\u0002\n\u0018ListAssociationsResponse\u0012.\n\u0005error\u0018\u0001 \u0001(\u000e2\u001f.ListAssociationsResponse.Error\u0012&\n\u000cassociations\u0018\u0002 \u0003(\u000b2\u0010.AssociationInfo\u0012\'\n\u000bcaptchaInfo\u0018\u0003 \u0001(\u000b2\u0012.Ser"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "verCaptchaInfo\"\u00ad\u0001\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0002\u0012\u0018\n\u0014INVALID_CAPTCHA_INFO\u0010\u0003\u0012\u0013\n\u000fCAPTCHA_EXPIRED\u0010\u0004\u0012#\n\u001fCREDENTIAL_VERIFICATION_FAILURE\u0010\u0005\"\u00bb\u0001\n\u000fAssociationInfo\u0012\r\n\u0005login\u0018\u0001 \u0002(\t\u0012%\n\ndeviceInfo\u0018\u0002 \u0002(\u000b2\u0011.ServerDeviceInfo\u0012\u0014\n\u000ccreationTime\u0018\u0003 \u0002(\u0003\u0012\u001d\n\tcloudInfo\u0018\u0004 \u0002(\u000b2\n.CloudInfo\u0012(\n\tsignature\u0018\u0005 \u0002(\u000b2\u0015.TakeAccountSignature\u0012\u0013\n\u000bblurVersion\u0018\u0006 \u0001(\t\"Z\n\u0014TakeAccountSigna"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ture\u0012\u0011\n\tsignature\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007context\u0018\u0002 \u0002(\t\u0012\u000f\n\u0007cloudid\u0018\u0003 \u0002(\u0005\u0012\r\n\u0005nonce\u0018\u0004 \u0002(\t\"\u0099\u0001\n\u0012TakeAccountRequest\u0012\'\n\u000baccountInfo\u0018\u0001 \u0002(\u000b2\u0012.ClientAccountInfo\u0012%\n\ndeviceInfo\u0018\u0002 \u0002(\u000b2\u0011.ClientDeviceInfo\u00123\n\u0014takeAccountSignature\u0018\u0003 \u0001(\u000b2\u0015.TakeAccountSignature\"\u00cb\u0002\n\u0013TakeAccountResponse\u0012)\n\u0005error\u0018\u0001 \u0001(\u000e2\u001a.TakeAccountResponse.Error\u0012\'\n\u0004data\u0018\u0002 \u0001(\u000b2\u0019.TakeAccountResponse.Data\u001a\u0084\u0001\n\u0004Data\u0012\'\n\u000baccountInfo\u0018\u0001 \u0002(\u000b2\u0012.ServerAccountInfo\u0012%\n\ndeviceInfo"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u0018\u0002 \u0002(\u000b2\u0011.ServerDeviceInfo\u0012,\n\u000bsessionInfo\u0018\u0003 \u0002(\u000b2\u0017.ServerOAUTHSessionInfo\"Y\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0003\"I\n\u0018RemoveAssociationRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005login\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0003 \u0002(\t\"\u00a7\u0001\n\u0019RemoveAssociationResponse\u0012/\n\u0005error\u0018\u0001 \u0001(\u000e2 .RemoveAssociationResponse.Error\"Y\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012 \n\u001cSERVICE_TEMPORARILY_DIS"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ABLED\u0010\u0003\"4\n\u0014ValidateNonceRequest\u0012\r\n\u0005login\u0018\u0001 \u0002(\t\u0012\r\n\u0005nonce\u0018\u0002 \u0002(\t\"\u009f\u0001\n\u0015ValidateNonceResponse\u0012+\n\u0005error\u0018\u0001 \u0001(\u000e2\u001c.ValidateNonceResponse.Error\"Y\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0002\"I\n\u0018ValidateSNAccountRequest\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005login\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0003 \u0002(\t\"\u00cc\u0001\n\u0019ValidateSNAccountResponse\u0012/\n\u0005error\u0018\u0001 \u0001(\u000e2 .ValidateSNAccountResponse.Error\"~\n\u0005Error\u0012#\n\u001fCREDENTIAL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "_VERIFICATION_FAILURE\u0010\u0000\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0003B/\n+com.motorola.blur.service.accounts.protocolH\u0002"

    aput-object v3, v1, v2

    .line 9117
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;-><init>()V

    .line 9365
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v6, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 9371
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$10300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_VerifyEmailFromLocalAddedEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ConfirmationEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ConfirmationEmailResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$12400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ConfirmationEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ConfirmationEmailResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$13000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$13100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$14100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$14200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$14800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$14900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$14902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$15900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ProviderCredentialsInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ProviderCredentialsInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$16000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ProviderCredentialsInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ProviderCredentialsInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$17000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$17002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$17100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ListAssociationsResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$18000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AssociationInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AssociationInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$18100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AssociationInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AssociationInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$19700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$19702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$19800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$21000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$21002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$21100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$21102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$22100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$22102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$22200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$22202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$22300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$22302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$22400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$22402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_TakeAccountResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$24100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$24102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$24200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$24202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$25200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$25202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$25300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$25302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$25900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$25902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$26000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$26002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$26800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$26802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$26900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$26902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateNonceResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$27500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$27502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$27600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$27602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$28600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$28602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$28700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$28702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$29302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewNameResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetPasswordResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetPasswordResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AlternateEmailResetPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AlternateEmailResetPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AlternateEmailResetPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AlternateEmailResetPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_NewOAUTHAccountResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ResetEmailAndPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 8996
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 9373
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
