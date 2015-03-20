.class public abstract Lcom/motorola/messaging/model/MediaModel;
.super Lcom/motorola/messaging/model/Model;
.source "MediaModel.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/model/MediaModel$MediaAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOG:Z


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

.field protected mDuration:I

.field private mMediaActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel$MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegion:Lcom/motorola/messaging/model/RegionModel;

.field protected mSeekTo:I

.field protected mSize:I

.field protected mSrc:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    .line 198
    new-instance v0, Lcom/motorola/messaging/model/MediaModel$1;

    invoke-direct {v0}, Lcom/motorola/messaging/model/MediaModel$1;-><init>()V

    sput-object v0, Lcom/motorola/messaging/model/MediaModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 142
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 64
    iput v1, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 76
    iput v1, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    .line 143
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/motorola/messaging/model/MediaModel;->setParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 115
    invoke-direct {p0, p2}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 64
    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 76
    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    .line 116
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/motorola/messaging/model/MediaModel;->setParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    invoke-virtual {p0, p5}, Lcom/motorola/messaging/model/MediaModel;->initializeModel(Landroid/net/Uri;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "wrapper"    # Lcom/motorola/messaging/drm/DrmWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 149
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 64
    iput v1, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 76
    iput v1, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    .line 150
    invoke-static {p1, p4}, Lcom/motorola/messaging/drm/DrmUtils;->insert(Landroid/content/Context;Lcom/motorola/messaging/drm/DrmWrapper;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/model/MediaModel;->setParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    iput-object p4, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    .line 152
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 160
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/Model;-><init>(Landroid/os/Parcel;)V

    .line 64
    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 76
    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSeekTo:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 168
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 169
    const-class v0, Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/drm/DrmWrapper;

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    .line 170
    const-class v0, Lcom/motorola/messaging/model/RegionModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/RegionModel;

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    const-class v3, Lcom/motorola/messaging/model/MediaModel$MediaAction;

    invoke-static {v3, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private extractFromMediaDB()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 529
    const/4 v8, 0x0

    .line 531
    .local v8, "duration":I
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 532
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "duration"

    aput-object v5, v3, v6

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 535
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 537
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 538
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 540
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "MediaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration from Media DB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 550
    return v8

    .line 544
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 547
    :cond_1
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extractFromMediaMetadataRetriever()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 561
    .local v1, "duration":I
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 564
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 565
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "dur":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 569
    sget-boolean v4, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v4, :cond_0

    .line 570
    const-string v4, "MediaModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration from MediaMetadataRetriever: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_0
    sget-boolean v4, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 578
    const-string v4, "MediaModel"

    const-string v5, "Releasing media metadata retriever"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 581
    sget-boolean v4, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v4, :cond_2

    .line 582
    const-string v4, "MediaModel"

    const-string v5, "Media metadata retriever released"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_2
    return v1

    .line 573
    .end local v0    # "dur":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 574
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MediaModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever failed to get duration for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v4, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    sget-boolean v5, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v5, :cond_3

    .line 578
    const-string v5, "MediaModel"

    const-string v6, "Releasing media metadata retriever"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 581
    sget-boolean v5, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v5, :cond_4

    .line 582
    const-string v5, "MediaModel"

    const-string v6, "Media metadata retriever released"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    throw v4
.end method

.method private final fixFileExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 823
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 824
    :cond_0
    const-string v2, "MediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixFileExtension - fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .end local p1    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 828
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_2
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 829
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 830
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 834
    sget-boolean v2, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 835
    const-string v2, "MediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixFileExtension - fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mContentType"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5f

    const/16 v4, 0x2e

    .line 795
    if-nez p1, :cond_1

    .line 796
    const/4 v0, 0x0

    .line 819
    :cond_0
    :goto_0
    return-object v0

    .line 799
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/util/StringUtils;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-direct {p0, v0, p2}, Lcom/motorola/messaging/model/MediaModel;->fixFileExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isMmsUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    .line 221
    iput-object p4, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 222
    iput-object p2, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 225
    invoke-virtual {p0, p3}, Lcom/motorola/messaging/model/MediaModel;->setSrc(Ljava/lang/String;)V

    .line 227
    sget-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "MediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParams, creationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendAction(Lcom/motorola/messaging/model/MediaModel$MediaAction;)V
    .locals 1
    .param p1, "action"    # Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method protected calculateSize()V
    .locals 0

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->calculateSizeFromUri()V

    .line 416
    return-void
.end method

.method protected calculateSizeFromUri()V
    .locals 9

    .prologue
    .line 419
    sget-boolean v6, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 420
    const-string v6, "MediaModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateSizeFromUri - START, type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v6, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    if-eqz v6, :cond_2

    .line 426
    iget-object v6, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v6}, Lcom/motorola/messaging/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v6

    array-length v6, v6

    iput v6, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    const/4 v5, 0x0

    .line 429
    .local v5, "size":I
    iget-object v6, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 430
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 432
    .local v4, "input":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 433
    if-eqz v4, :cond_3

    .line 435
    instance-of v6, v4, Ljava/io/FileInputStream;

    if-eqz v6, :cond_4

    .line 437
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 438
    .local v3, "f":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    long-to-int v5, v6

    .line 454
    .end local v3    # "f":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v4, :cond_1

    .line 456
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    :goto_1
    invoke-virtual {p0, v5}, Lcom/motorola/messaging/model/MediaModel;->setMediaSize(I)V

    .line 464
    sget-boolean v6, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v6, :cond_1

    .line 465
    const-string v6, "MediaModel"

    const-string v7, "calculateSize - END"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_4
    :goto_2
    const/4 v6, -0x1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eq v6, v7, :cond_3

    .line 441
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 457
    :catch_0
    move-exception v2

    .line 459
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 445
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MediaModel"

    const-string v7, "Exception caught while opening or reading stream"

    invoke-static {v6, v7, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    instance-of v6, v2, Ljava/io/FileNotFoundException;

    if-nez v6, :cond_5

    instance-of v6, v2, Ljava/lang/SecurityException;

    if-eqz v6, :cond_6

    .line 450
    :cond_5
    const/4 v6, 0x0

    iput v6, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :cond_6
    if-eqz v4, :cond_1

    .line 456
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 462
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0, v5}, Lcom/motorola/messaging/model/MediaModel;->setMediaSize(I)V

    .line 464
    sget-boolean v6, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v6, :cond_1

    .line 465
    const-string v6, "MediaModel"

    const-string v7, "calculateSize - END"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 459
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "MediaModel"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v6, v7, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_7

    .line 456
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 462
    :goto_4
    invoke-virtual {p0, v5}, Lcom/motorola/messaging/model/MediaModel;->setMediaSize(I)V

    .line 464
    sget-boolean v7, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v7, :cond_7

    .line 465
    const-string v7, "MediaModel"

    const-string v8, "calculateSize - END"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    throw v6

    .line 457
    :catch_3
    move-exception v2

    .line 459
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MediaModel"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method protected abstract checkContentRestriction()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation
.end method

.method public clearActions()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 765
    return-void
.end method

.method protected ensurePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 393
    return-object p1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentAction()Lcom/motorola/messaging/model/MediaModel$MediaAction;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 612
    sget-object v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 614
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel$MediaAction;

    goto :goto_0
.end method

.method public getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    return-object v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    const/16 v3, 0x1388

    .line 258
    iget v1, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    if-gez v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->initMediaDuration()V
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    iget v1, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v1, "MediaModel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iput v3, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    goto :goto_0

    .line 268
    .end local v0    # "e":Lcom/motorola/messaging/util/MmsException;
    :cond_1
    iput v3, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public getEncodedSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/messaging/util/StringUtils;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 755
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPathFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Lcom/motorola/messaging/model/RegionModel;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mRegion:Lcom/motorola/messaging/model/RegionModel;

    return-object v0
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSeekTo:I

    return v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 403
    iget v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    if-gez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->calculateSize()V

    .line 407
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 408
    const-string v0, "MediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSize, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_1
    iget v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriWithDrmCheck()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/motorola/messaging/drm/DrmWrapper;->consumeRights()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/motorola/messaging/drm/DrmException;

    const-string v1, "Insufficient DRM rights."

    invoke-direct {v0, v1}, Lcom/motorola/messaging/drm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected initMediaDuration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 498
    sget-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 499
    const-string v0, "MediaModel"

    const-string v1, "initMediaDuration"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 512
    invoke-direct {p0}, Lcom/motorola/messaging/model/MediaModel;->extractFromMediaDB()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 513
    iget v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    if-nez v0, :cond_2

    .line 516
    invoke-direct {p0}, Lcom/motorola/messaging/model/MediaModel;->extractFromMediaMetadataRetriever()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 521
    :cond_2
    :goto_0
    return-void

    .line 519
    :cond_3
    invoke-direct {p0}, Lcom/motorola/messaging/model/MediaModel;->extractFromMediaMetadataRetriever()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method protected initializeFromUri(Landroid/net/Uri;)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 651
    sget-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "MediaModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeFromUri, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSrc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 746
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    const/4 v12, 0x0

    .line 664
    .local v12, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 665
    .local v13, "scheme":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 667
    invoke-virtual {p0, v12}, Lcom/motorola/messaging/model/MediaModel;->validatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 668
    invoke-static {v12}, Lcom/motorola/messaging/mime/MmsContentType;->getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 704
    :goto_1
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 705
    new-instance v0, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v0, v2}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_3
    const-string v0, "content"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 670
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 671
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 673
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 675
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 676
    invoke-static {p1}, Lcom/motorola/messaging/model/MediaModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v11

    .line 678
    .local v11, "isFromMms":Z
    if-eqz v11, :cond_5

    .line 679
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 680
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 681
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 683
    :cond_4
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :goto_2
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 685
    :cond_5
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    :try_start_2
    invoke-virtual {p0, v7}, Lcom/motorola/messaging/model/MediaModel;->getPathFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_2

    .line 692
    .end local v11    # "isFromMms":Z
    :cond_6
    :try_start_3
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 698
    :cond_7
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_8
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_9
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    .line 710
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 713
    :cond_a
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 716
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 717
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/MediaModel;->getNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 720
    :cond_b
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-direct {p0, v12, v0}, Lcom/motorola/messaging/model/MediaModel;->getNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 723
    :cond_c
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 724
    new-instance v0, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "Media source name is unknown."

    invoke-direct {v0, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_d
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v2, "video/mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 729
    .local v10, "index":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_1

    .line 731
    :try_start_4
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 732
    .local v9, "extension":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3gp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "3gpp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "3g2"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    :cond_e
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 738
    .end local v9    # "extension":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 739
    .local v8, "ex":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 740
    const-string v0, "MediaModel"

    const-string v2, "Media extension is unknown."

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 689
    .end local v8    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v10    # "index":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isFromMms":Z
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method initializeModel(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v1, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    if-eq v0, v1, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/MediaModel;->initializeFromUri(Landroid/net/Uri;)V

    .line 241
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->checkContentRestriction()V

    .line 242
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->setDefaultRegion()V

    .line 244
    :cond_0
    return-void
.end method

.method public isDrmProtected()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForwardable()Z
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/motorola/messaging/drm/DrmWrapper;->isForwardable()Z

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

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public isSaveable()Z
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x1

    return v0
.end method

.method protected mustConsumeDrmRights()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {v0}, Lcom/motorola/messaging/drm/DrmWrapper;->mustConsumeRights()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Z)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .locals 2
    .param p1, "outputFolder"    # Ljava/lang/String;
    .param p2, "canOverwrite"    # Z

    .prologue
    .line 774
    new-instance v0, Lcom/motorola/messaging/model/SaveMediaCommand;

    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/motorola/messaging/model/SaveMediaCommand;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SaveMediaCommand;->execute()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    .line 254
    return-void
.end method

.method protected abstract setDefaultRegion()V
.end method

.method setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 275
    sget-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "MediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration, duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->isPlayable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    const/16 v0, 0x1388

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    .line 284
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 285
    return-void

    .line 281
    :cond_1
    iput p1, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method protected setMediaSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 473
    sget-boolean v0, Lcom/motorola/messaging/model/MediaModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "MediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaSize, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    iput p1, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 478
    return-void
.end method

.method protected setRegion(Lcom/motorola/messaging/model/RegionModel;)V
    .locals 0
    .param p1, "region"    # Lcom/motorola/messaging/model/RegionModel;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/motorola/messaging/model/MediaModel;->mRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 643
    return-void
.end method

.method protected setSrc(Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5f

    const/16 v4, 0x2e

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {p1}, Lcom/motorola/messaging/util/StringUtils;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 381
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/MediaModel;->ensurePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    .line 349
    return-void
.end method

.method protected validatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 647
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/Model;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    iget v3, p0, Lcom/motorola/messaging/model/MediaModel;->mDuration:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v3, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v3, p0, Lcom/motorola/messaging/model/MediaModel;->mSeekTo:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mDrmObjectWrapper:Lcom/motorola/messaging/drm/DrmWrapper;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mRegion:Lcom/motorola/messaging/model/RegionModel;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "mediaActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mMediaActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;

    .line 193
    .local v1, "mediaAction":Lcom/motorola/messaging/model/MediaModel$MediaAction;
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v1    # "mediaAction":Lcom/motorola/messaging/model/MediaModel$MediaAction;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 196
    return-void
.end method
