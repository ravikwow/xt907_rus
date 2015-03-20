.class final Lcom/motorola/messaging/model/Model$1;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/model/Model;
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
        "Lcom/motorola/messaging/model/Model;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/model/Model;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .local v0, "description":I
    # getter for: Lcom/motorola/messaging/model/Model;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/model/Model;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromParcel, this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v4, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 121
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown model"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :pswitch_0
    new-instance v1, Lcom/motorola/messaging/model/TextModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/os/Parcel;)V

    .line 139
    :goto_0
    return-object v1

    .line 125
    :pswitch_1
    new-instance v1, Lcom/motorola/messaging/model/AudioModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/AudioModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 127
    :pswitch_2
    new-instance v1, Lcom/motorola/messaging/model/ImageModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 129
    :pswitch_3
    new-instance v1, Lcom/motorola/messaging/model/VideoModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/VideoModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 131
    :pswitch_4
    new-instance v1, Lcom/motorola/messaging/model/VcardModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/VcardModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 133
    :pswitch_5
    new-instance v1, Lcom/motorola/messaging/model/ICalModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/ICalModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 135
    :pswitch_6
    new-instance v1, Lcom/motorola/messaging/model/RegionModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/RegionModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 137
    :pswitch_7
    new-instance v1, Lcom/motorola/messaging/model/SlideModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/SlideModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 139
    :pswitch_8
    new-instance v1, Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {v1, p1}, Lcom/motorola/messaging/model/SmilModel;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/Model$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/messaging/model/Model;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/messaging/model/Model;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 145
    new-array v0, p1, [Lcom/motorola/messaging/model/Model;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/Model$1;->newArray(I)[Lcom/motorola/messaging/model/Model;

    move-result-object v0

    return-object v0
.end method
