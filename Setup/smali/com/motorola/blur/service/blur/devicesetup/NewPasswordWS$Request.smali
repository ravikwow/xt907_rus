.class public Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "NewPasswordWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "accounts/1/newpassword"

.field private static final MY_URL:Ljava/lang/String; = "/ws/accounts/1/newpassword"


# instance fields
.field private mNewPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;->mNewPassword:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 75
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    .line 76
    .local v0, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    .line 77
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->setCurrentPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    .line 78
    invoke-virtual {v0, p2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->setNewPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    .line 80
    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 81
    iput-object p2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;->mNewPassword:Ljava/lang/String;

    .line 82
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    .line 83
    return-void
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 87
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;->mNewPassword:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;-><init>(I[BLjava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "/ws/accounts/1/newpassword"

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "accounts/1/newpassword"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public resetPasswords(Ljava/lang/String;)V
    .locals 2
    .param p1, "passwords"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    .line 107
    .local v0, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    .line 108
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->setCurrentPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    .line 109
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->setNewPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    .line 111
    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 112
    iput-object p1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;->mNewPassword:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Request;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method
