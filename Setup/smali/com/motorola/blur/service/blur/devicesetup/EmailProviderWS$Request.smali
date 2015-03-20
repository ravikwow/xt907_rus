.class public Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "EmailProviderWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "email/1/emailprovidersetting"

.field private static final MY_URL:Ljava/lang/String; = "/ws/email/1/emailprovidersetting?k=android&f=pb&of=0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 87
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->newBuilder()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    .line 88
    .local v0, "req":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    .line 89
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getBlurVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->setBlurVersion(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    .line 90
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getAccountFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->setCapabilities(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    .line 91
    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 92
    return-void
.end method


# virtual methods
.method public canUseMasterCloud()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 96
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/EmailProviderWS$Response;-><init>(I[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "/ws/email/1/emailprovidersetting?k=android&f=pb&of=0"

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "url":Ljava/lang/StringBuilder;
    const-string v1, "/ws/email/1/emailprovidersetting?k=android&f=pb&of=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "email/1/emailprovidersetting"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    return-void
.end method
