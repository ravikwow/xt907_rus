.class public final Lcom/motorola/messaging/model/SlideModel;
.super Lcom/motorola/messaging/model/Model;
.source "SlideModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/model/SlideModel$SlideAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/messaging/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOG:Z


# instance fields
.field private mDuration:I

.field private final mMediaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/motorola/messaging/model/SmilModel;

.field private mSize:I

.field private mSlideActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/SlideModel$SlideAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/SlideModel;->LOCAL_LOG:Z

    .line 151
    new-instance v0, Lcom/motorola/messaging/model/SlideModel$1;

    invoke-direct {v0}, Lcom/motorola/messaging/model/SlideModel$1;-><init>()V

    sput-object v0, Lcom/motorola/messaging/model/SlideModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 78
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    .line 51
    iput v1, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    .line 54
    iput v1, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    .line 79
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 115
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/Model;-><init>(Landroid/os/Parcel;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    .line 51
    iput v1, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    .line 54
    iput v1, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    .line 118
    const-class v0, Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 121
    iget-object v4, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    const-class v3, Lcom/motorola/messaging/model/SlideModel$SlideAction;

    invoke-static {v3, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/util/List;)V
    .locals 4
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/model/Model$CreationMode;",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .local p2, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/MediaModel;>;"
    const/4 v3, -0x1

    .line 93
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    .line 51
    iput v3, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    .line 54
    iput v3, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 96
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-direct {p0, v1}, Lcom/motorola/messaging/model/SlideModel;->internalAdd(Lcom/motorola/messaging/model/MediaModel;)V

    goto :goto_0

    .line 98
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    return-void
.end method

.method private getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    return-object v0
.end method

.method private internalAdd(Lcom/motorola/messaging/model/MediaModel;)V
    .locals 8
    .param p1, "media"    # Lcom/motorola/messaging/model/MediaModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 194
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v5, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/MediaModel;

    .line 200
    .local v3, "oldMedia":Lcom/motorola/messaging/model/MediaModel;
    if-nez v3, :cond_3

    .line 202
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/SlideModel;->validateAddition(Lcom/motorola/messaging/model/MediaModel;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can not add this media to slide due to media conflict."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/motorola/messaging/model/SlideModel;->validateSize(II)V

    .line 219
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v5, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/IModelChangedObserver;

    .line 222
    .local v2, "observer":Lcom/motorola/messaging/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_2

    .line 208
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lcom/motorola/messaging/model/IModelChangedObserver;
    :cond_3
    invoke-virtual {v3}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v4

    .line 209
    .local v4, "removedSize":I
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v0

    .line 211
    .local v0, "addedSize":I
    if-le v0, v4, :cond_4

    .line 212
    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v5

    sub-int v6, v0, v4

    invoke-direct {p0, v5, v6}, Lcom/motorola/messaging/model/SlideModel;->validateSize(II)V

    .line 215
    :cond_4
    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {v3}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_1

    .line 225
    .end local v0    # "addedSize":I
    .end local v4    # "removedSize":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-boolean v5, Lcom/motorola/messaging/model/SlideModel;->LOCAL_LOG:Z

    if-eqz v5, :cond_6

    .line 226
    const-string v5, "SlideModel"

    const-string v6, "internalAdd - new Media added"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_6
    iput v7, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    .line 232
    iput v7, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    goto :goto_0
.end method

.method private validateAddition(Lcom/motorola/messaging/model/MediaModel;)Z
    .locals 3
    .param p1, "media"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 271
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 261
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 265
    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 269
    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private validateSize(II)V
    .locals 3
    .param p1, "mediaType"    # I
    .param p2, "addedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Lcom/motorola/messaging/model/SlideModel;->mParent:Lcom/motorola/messaging/model/SmilModel;

    if-eqz v1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/model/SlideModel;->mParent:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/messaging/model/SmilModel;->validateSize(II)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/RestrictedModeExceedSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;
    new-instance v1, Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;

    invoke-direct {v1}, Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;-><init>()V

    throw v1

    .line 243
    .end local v0    # "e":Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    new-instance v1, Lcom/motorola/messaging/model/ExceedMessageSizeException;

    invoke-direct {v1}, Lcom/motorola/messaging/model/ExceedMessageSizeException;-><init>()V

    throw v1

    .line 247
    .end local v0    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :catch_2
    move-exception v0

    .line 248
    .local v0, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v1, "SlideModel"

    const-string v2, "Failed to validate size"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/motorola/messaging/model/MediaModel;)V
    .locals 1
    .param p1, "media"    # Lcom/motorola/messaging/model/MediaModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/SlideModel;->internalAdd(Lcom/motorola/messaging/model/MediaModel;)V

    .line 350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 351
    return-void
.end method

.method public clearActions()V
    .locals 3

    .prologue
    .line 549
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 550
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 551
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->clearActions()V

    goto :goto_0

    .line 553
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    return-void
.end method

.method public getAudio()Lcom/motorola/messaging/model/AudioModel;
    .locals 2

    .prologue
    .line 508
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    .line 509
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v0, :cond_0

    .line 510
    check-cast v0, Lcom/motorola/messaging/model/AudioModel;

    .line 512
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-object v0

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAction()Lcom/motorola/messaging/model/SlideModel$SlideAction;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 417
    sget-object v0, Lcom/motorola/messaging/model/SlideModel$SlideAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/model/SlideModel$SlideAction;

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/SlideModel$SlideAction;

    goto :goto_0
.end method

.method public getDuration()I
    .locals 7

    .prologue
    .line 280
    iget v4, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    if-gez v4, :cond_2

    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "largestDuration":I
    iget-object v4, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/MediaModel;

    .line 285
    .local v2, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/MediaModel;->getDuration()I

    move-result v3

    .line 286
    .local v3, "mediaDuration":I
    if-le v3, v1, :cond_0

    .line 287
    move v1, v3

    goto :goto_0

    .line 290
    .end local v2    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v3    # "mediaDuration":I
    :cond_1
    iput v1, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "largestDuration":I
    :cond_2
    sget-boolean v4, Lcom/motorola/messaging/model/SlideModel;->LOCAL_LOG:Z

    if-eqz v4, :cond_3

    .line 294
    const-string v4, "SlideModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDuration - duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_3
    iget v4, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    return v4
.end method

.method public getImage()Lcom/motorola/messaging/model/ImageModel;
    .locals 2

    .prologue
    .line 496
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    .line 497
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v0, :cond_0

    .line 498
    check-cast v0, Lcom/motorola/messaging/model/ImageModel;

    .line 500
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-object v0

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNonTextMediaSize()I
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->getTextSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 305
    iget v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    if-gez v2, :cond_0

    .line 306
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    .line 307
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 308
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    iget v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    goto :goto_0

    .line 311
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    iget v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    return v2
.end method

.method public getText()Lcom/motorola/messaging/model/TextModel;
    .locals 2

    .prologue
    .line 484
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    .line 485
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v0, :cond_0

    .line 486
    check-cast v0, Lcom/motorola/messaging/model/TextModel;

    .line 488
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-object v0

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextSize()I
    .locals 4

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "size":I
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 321
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v1

    .line 325
    :cond_0
    return v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x9

    return v0
.end method

.method public getVideo()Lcom/motorola/messaging/model/VideoModel;
    .locals 2

    .prologue
    .line 520
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    .line 521
    .local v0, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v0, :cond_0

    .line 522
    check-cast v0, Lcom/motorola/messaging/model/VideoModel;

    .line 524
    .end local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-object v0

    .restart local v0    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 395
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "evtType":Ljava/lang/String;
    sget-boolean v2, Lcom/motorola/messaging/model/SlideModel;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "SlideModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    sget-object v0, Lcom/motorola/messaging/model/SlideModel$SlideAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/model/SlideModel$SlideAction;

    .line 401
    .local v0, "action":Lcom/motorola/messaging/model/SlideModel$SlideAction;
    const-string v2, "SmilSlideStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    sget-object v0, Lcom/motorola/messaging/model/SlideModel$SlideAction;->START:Lcom/motorola/messaging/model/SlideModel$SlideAction;

    .line 407
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 409
    return-void

    .line 403
    :cond_2
    const-string v2, "SmilSlideEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    sget-object v0, Lcom/motorola/messaging/model/SlideModel$SlideAction;->END:Lcom/motorola/messaging/model/SlideModel$SlideAction;

    goto :goto_0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNonEmptyText()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v1

    .line 428
    .local v1, "textModel":Lcom/motorola/messaging/model/TextModel;
    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v1}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 432
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public hasNonTextMedia()Z
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 444
    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/SlideModel;->getMediaByType(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isForwardable()Z
    .locals 3

    .prologue
    .line 600
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 601
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->isForwardable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    const/4 v2, 0x0

    .line 606
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSaveable()Z
    .locals 3

    .prologue
    .line 614
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 615
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->isSaveable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    const/4 v2, 0x1

    .line 620
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public keepOnlyText()V
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/SlideModel;->remove(Lcom/motorola/messaging/model/MediaModel;)Z

    .line 560
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->getAudio()Lcom/motorola/messaging/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/SlideModel;->remove(Lcom/motorola/messaging/model/MediaModel;)Z

    .line 561
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/SlideModel;->remove(Lcom/motorola/messaging/model/MediaModel;)Z

    .line 562
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 374
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_0

    .line 376
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    return-void
.end method

.method public remove(Lcom/motorola/messaging/model/MediaModel;)Z
    .locals 4
    .param p1, "media"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 359
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 362
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 363
    iput v3, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    .line 364
    iput v3, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method saveAllMedia()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;>;"
    iget-object v3, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 571
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->isSaveable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/motorola/messaging/model/MediaModel;->save(Ljava/lang/String;Z)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_1
    return-object v2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 181
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/motorola/messaging/model/MediaModel;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 183
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    return-void
.end method

.method public setParent(Lcom/motorola/messaging/model/SmilModel;)V
    .locals 0
    .param p1, "model"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/motorola/messaging/model/SlideModel;->mParent:Lcom/motorola/messaging/model/SmilModel;

    .line 191
    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 388
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 389
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 391
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 381
    iget-object v2, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 382
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/motorola/messaging/model/Model;->unregisterModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_0

    .line 384
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/Model;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v2, "mediasBundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 139
    .local v1, "mediaKey":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/motorola/messaging/model/SlideModel;->mMediaMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 141
    .end local v1    # "mediaKey":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 142
    iget v5, p0, Lcom/motorola/messaging/model/SlideModel;->mDuration:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v5, p0, Lcom/motorola/messaging/model/SlideModel;->mSize:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v4, "slideActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/motorola/messaging/model/SlideModel;->mSlideActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/SlideModel$SlideAction;

    .line 146
    .local v3, "slideAction":Lcom/motorola/messaging/model/SlideModel$SlideAction;
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    .end local v3    # "slideAction":Lcom/motorola/messaging/model/SlideModel$SlideAction;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    return-void
.end method
