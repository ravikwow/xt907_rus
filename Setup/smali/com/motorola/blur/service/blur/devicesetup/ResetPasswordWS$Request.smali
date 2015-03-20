.class public Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "ResetPasswordWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field private static final BLUR_VERSION_PROP:Ljava/lang/String; = "ro.build.version.full"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "accounts/1/resetpassword"

.field private static final MY_URL:Ljava/lang/String; = "/ws/accounts/1/resetpassword?k=android&f=pb&of=0"


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field private mSn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mEmail:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mPhoneNum:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mImsi:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mSn:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mEmail:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mPhoneNum:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mImsi:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mSn:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 116
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;-><init>(I[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mSn:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v2, "ro.build.version.full"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "blurVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mImsi:Ljava/lang/String;

    const-string v3, "310260000000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Blur_Version.0.0.1.MB200.Blurdev.en.US"

    .line 97
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "url":Ljava/lang/StringBuilder;
    const-string v2, "/ws/accounts/1/resetpassword?k=android&f=pb&of=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mSn:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mPhoneNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&email="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mEmail:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 93
    .end local v1    # "url":Ljava/lang/StringBuilder;
    :cond_2
    const-string v0, "Blur_Version.1.0.8.MB200.T-Mobile.en.US"

    goto :goto_0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "accounts/1/resetpassword"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Request;->mSn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
