.class final Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response$1;
.super Ljava/lang/Object;
.source "NewPasswordWS.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
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
        "Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 130
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;-><init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 134
    new-array v0, p1, [Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response$1;->newArray(I)[Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    move-result-object v0

    return-object v0
.end method
