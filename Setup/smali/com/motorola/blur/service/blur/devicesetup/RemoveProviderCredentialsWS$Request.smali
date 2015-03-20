.class public Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "RemoveProviderCredentialsWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "settings/2/removeprovidercredentials"

.field private static final MY_URL:Ljava/lang/String; = "/ws/settings/2/removeprovidercredentials"


# instance fields
.field private mId:J

.field private mIntentCategory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mId:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mIntentCategory:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;JLjava/lang/String;)V
    .locals 3
    .param p1, "credentials"    # Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .param p2, "id"    # J
    .param p4, "intentCategory"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 79
    iput-wide p2, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mId:J

    .line 80
    iput-object p4, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mIntentCategory:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;->newBuilder()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    move-result-object v1

    .line 83
    .local v1, "req":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->setType(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    .line 86
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;->getLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;

    .line 88
    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 96
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;

    iget-wide v3, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mId:J

    iget-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mIntentCategory:Ljava/lang/String;

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;-><init>(I[BJLjava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "/ws/settings/2/removeprovidercredentials"

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "settings/2/removeprovidercredentials"

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
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Request;->mIntentCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
