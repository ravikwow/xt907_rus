.class public Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "VerifyAccountWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "accounts/1/verifyemailfromlocaladdedemail"

.field private static final MY_URL:Ljava/lang/String; = "/ws/accounts/1/verifyemailfromlocaladdedemail"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 68
    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mMaxRetries:B

    .line 70
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    move-result-object v0

    .line 71
    .local v0, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->setLocalAddedEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;

    .line 72
    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 73
    return-void
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 77
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Response;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/VerifyAccountWS$Response;-><init>(I[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "/ws/accounts/1/verifyemailfromlocaladdedemail"

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "accounts/1/verifyemailfromlocaladdedemail"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    return-void
.end method
