.class public Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "NewEmailWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "accounts/1/resetemailandpassword"

.field private static final MY_URL:Ljava/lang/String; = "/ws/accounts/1/resetemailandpassword"


# instance fields
.field private mEmail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;->mEmail:Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "newEmail"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;->mEmail:Ljava/lang/String;

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
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Response;-><init>(I[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getNewEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "/ws/accounts/1/resetemailandpassword"

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "accounts/1/resetemailandpassword"

    return-object v0
.end method

.method public setCurrentCreds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "curEmail"    # Ljava/lang/String;
    .param p2, "curPassword"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    .line 91
    .local v0, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    if-eqz p1, :cond_0

    .end local p1    # "curEmail":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->setCurrentEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    .line 92
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;->mEmail:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->setNewEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    .line 93
    if-eqz p2, :cond_2

    .end local p2    # "curPassword":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, p2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->setNewPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    .line 94
    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 95
    return-void

    .line 91
    .restart local p1    # "curEmail":Ljava/lang/String;
    .restart local p2    # "curPassword":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 92
    .end local p1    # "curEmail":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 93
    :cond_2
    const-string p2, ""

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewEmailWS$Request;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
