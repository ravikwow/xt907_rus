.class final Lcom/motorola/contracts/messaging/Message$1;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contracts/messaging/Message;
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
        "Lcom/motorola/contracts/messaging/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/contracts/messaging/Message;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    new-instance v0, Lcom/motorola/contracts/messaging/Message;

    invoke-direct {v0}, Lcom/motorola/contracts/messaging/Message;-><init>()V

    .line 118
    .local v0, "message":Lcom/motorola/contracts/messaging/Message;
    invoke-virtual {v0, p1}, Lcom/motorola/contracts/messaging/Message;->readFromParcel(Landroid/os/Parcel;)V

    .line 120
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/motorola/contracts/messaging/Message$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/contracts/messaging/Message;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/contracts/messaging/Message;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 124
    new-array v0, p1, [Lcom/motorola/contracts/messaging/Message;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/motorola/contracts/messaging/Message$1;->newArray(I)[Lcom/motorola/contracts/messaging/Message;

    move-result-object v0

    return-object v0
.end method
