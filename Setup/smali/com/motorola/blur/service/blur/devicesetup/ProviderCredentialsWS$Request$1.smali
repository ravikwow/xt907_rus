.class final Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request$1;
.super Ljava/lang/Object;
.source "ProviderCredentialsWS.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;-><init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 52
    new-array v0, p1, [Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request$1;->newArray(I)[Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Request;

    move-result-object v0

    return-object v0
.end method
