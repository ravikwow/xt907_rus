.class public Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "ProviderCredentialsWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "settings/3/providercredentials"

.field private static final MY_URL:Ljava/lang/String; = "/ws/settings/3/providercredentials"


# instance fields
.field private mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;->mId:J

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;J)V
    .locals 3
    .param p1, "credentials"    # Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .param p2, "id"    # J

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 77
    iput-wide p2, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;->mId:J

    .line 79
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v1

    .line 80
    .local v1, "req":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->setType(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    .line 83
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    .line 84
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    .line 86
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getCaptchaToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getCaptchaToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->setCaptchaToken(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getCapthcaText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getCapthcaText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->setCaptchaText(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    .line 94
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 102
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;

    iget-wide v1, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;->mId:J

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;-><init>(I[BJ)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "/ws/settings/3/providercredentials"

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "settings/3/providercredentials"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    return-void
.end method
