.class final Lcom/motorola/messaging/model/SlideModel$1;
.super Ljava/lang/Object;
.source "SlideModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/model/SlideModel;
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
        "Lcom/motorola/messaging/model/SlideModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/model/SlideModel;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    sget-object v1, Lcom/motorola/messaging/model/Model;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/Model;

    .line 156
    .local v0, "model":Lcom/motorola/messaging/model/Model;
    instance-of v1, v0, Lcom/motorola/messaging/model/SlideModel;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid model"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    check-cast v0, Lcom/motorola/messaging/model/SlideModel;

    .end local v0    # "model":Lcom/motorola/messaging/model/Model;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/SlideModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/messaging/model/SlideModel;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 164
    new-array v0, p1, [Lcom/motorola/messaging/model/SlideModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/SlideModel$1;->newArray(I)[Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    return-object v0
.end method
