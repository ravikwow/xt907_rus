.class public final Lcom/motorola/messaging/model/SmilModel;
.super Lcom/motorola/messaging/model/Model;
.source "SmilModel.java"

# interfaces
.implements Lcom/motorola/messaging/model/IModelChangedObserver;


# static fields
.field private static final DEFAULT_REGION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/model/RegionModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOG:Z


# instance fields
.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private mIsOversizedContentRemoved:Z

.field private mIsRestrictedContentRemoved:Z

.field private mIsUnsupportedContentRemoved:Z

.field private mPduBodyCache:Lcom/motorola/messaging/pdu/PduBody;

.field private mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/model/RegionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSlides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v1, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/messaging/model/SmilModel;->DEFAULT_REGION_MAP:Ljava/util/Map;

    .line 68
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultTextRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v0

    .line 69
    .local v0, "tempRegion":Lcom/motorola/messaging/model/RegionModel;
    sget-object v1, Lcom/motorola/messaging/model/SmilModel;->DEFAULT_REGION_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultMediaRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/motorola/messaging/model/SmilModel;->DEFAULT_REGION_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p3, "pduBody"    # Lcom/motorola/messaging/pdu/PduBody;
    .param p4, "trackModelChanges"    # Z

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-direct {p0, p2}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    .line 133
    invoke-static {p3}, Lcom/motorola/messaging/dom/smil/SmilHelper;->getDocument(Lcom/motorola/messaging/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v7

    .line 136
    .local v7, "document":Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/model/SmilModel;->parseRegions(Lorg/w3c/dom/smil/SMILLayoutElement;)Ljava/util/Map;

    move-result-object v5

    .line 139
    .local v5, "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/messaging/model/RegionModel;>;"
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, v5}, Lcom/motorola/messaging/model/SmilModel;->parseSlides(Landroid/content/Context;Lorg/w3c/dom/smil/SMILElement;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 140
    .local v10, "tempSlides":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/SlideModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "slides":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/SlideModel;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/messaging/model/SlideModel;

    .line 145
    .local v9, "model":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v9}, Lcom/motorola/messaging/model/SlideModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "model":Lcom/motorola/messaging/model/SlideModel;
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/motorola/messaging/model/SmilModel;->parseAttachments(Landroid/content/Context;Lcom/motorola/messaging/pdu/PduBody;)Ljava/util/List;

    move-result-object v4

    .line 155
    .local v4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/MediaModel;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "slides":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/SlideModel;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/MediaModel;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/motorola/messaging/model/SmilModel;->DEFAULT_REGION_MAP:Ljava/util/Map;

    .end local v5    # "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/messaging/model/RegionModel;>;"
    move-object v0, p0

    move-object v3, v2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/model/SmilModel;->init(Ljava/util/List;Lorg/w3c/dom/smil/SMILDocument;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/List;Ljava/util/Map;Z)V

    .line 162
    :goto_1
    return-void

    .restart local v1    # "slides":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/SlideModel;>;"
    .restart local v4    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/MediaModel;>;"
    .restart local v5    # "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/messaging/model/RegionModel;>;"
    :cond_2
    move-object v0, p0

    move-object v2, v7

    move-object v3, p3

    move v6, p4

    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/model/SmilModel;->init(Ljava/util/List;Lorg/w3c/dom/smil/SMILDocument;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/List;Ljava/util/Map;Z)V

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 225
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/Model;-><init>(Landroid/os/Parcel;)V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    .line 227
    sget-boolean v0, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "SmilModel"

    const-string v3, "SmilModel (parcel)"

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/messaging/model/SmilModel;->mIsUnsupportedContentRemoved:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/messaging/model/SmilModel;->mIsOversizedContentRemoved:Z

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/motorola/messaging/model/SmilModel;->mIsRestrictedContentRemoved:Z

    .line 236
    const-class v0, Lcom/motorola/messaging/model/RegionModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/RegionModel;

    .line 239
    iget-object v5, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move v0, v2

    .line 232
    goto :goto_0

    :cond_2
    move v0, v2

    .line 233
    goto :goto_1

    :cond_3
    move v1, v2

    .line 234
    goto :goto_2

    .line 241
    :cond_4
    sget-object v0, Lcom/motorola/messaging/model/SlideModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    .line 242
    sget-object v0, Lcom/motorola/messaging/model/MediaModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    .line 245
    invoke-direct {p0, v2}, Lcom/motorola/messaging/model/SmilModel;->setSmilModelInfoOnChildren(Z)V

    .line 246
    return-void
.end method

.method private constructor <init>(Lcom/motorola/messaging/model/Model$CreationMode;Z)V
    .locals 7
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "trackModelChanges"    # Z

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/Model;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;)V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/motorola/messaging/model/SmilModel;->DEFAULT_REGION_MAP:Ljava/util/Map;

    move-object v0, p0

    move-object v3, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/model/SmilModel;->init(Ljava/util/List;Lorg/w3c/dom/smil/SMILDocument;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/List;Ljava/util/Map;Z)V

    .line 128
    return-void
.end method

.method public static cleanupDRMStorage(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1213
    invoke-static {p0}, Lcom/motorola/messaging/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 1214
    return-void
.end method

.method public static createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Z)Lcom/motorola/messaging/model/SmilModel;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "trackModelChanges"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/motorola/messaging/model/SmilModel;

    invoke-static {p0, p2}, Lcom/motorola/messaging/model/SmilModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/motorola/messaging/model/SmilModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)V

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)Lcom/motorola/messaging/model/SmilModel;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p2, "pduBody"    # Lcom/motorola/messaging/pdu/PduBody;
    .param p3, "trackModelChanges"    # Z

    .prologue
    .line 190
    new-instance v0, Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/motorola/messaging/model/SmilModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduBody;Z)V

    return-object v0
.end method

.method public static createNew(Lcom/motorola/messaging/model/Model$CreationMode;Z)Lcom/motorola/messaging/model/SmilModel;
    .locals 1
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p1, "trackModelChanges"    # Z

    .prologue
    .line 177
    new-instance v0, Lcom/motorola/messaging/model/SmilModel;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/model/SmilModel;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;Z)V

    return-object v0
.end method

.method private generateEncodedContentId(Lcom/motorola/messaging/model/MediaModel;)Ljava/lang/String;
    .locals 3
    .param p1, "media"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    .line 619
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "contentId":Ljava/lang/String;
    const-string v2, "cid:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_0
    invoke-static {v0}, Lcom/motorola/messaging/util/StringUtils;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 626
    :cond_0
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 627
    .local v1, "index":I
    if-gtz v1, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private generateEncodedLocation(Lcom/motorola/messaging/model/MediaModel;)Ljava/lang/String;
    .locals 2
    .param p1, "media"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    .line 605
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "location":Ljava/lang/String;
    const-string v1, "cid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const-string v1, "cid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    :cond_0
    invoke-static {v0}, Lcom/motorola/messaging/util/StringUtils;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/messaging/pdu/PduBody;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v1

    .line 346
    .local v1, "p":Lcom/motorola/messaging/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v2

    .line 348
    .local v2, "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 349
    .local v0, "msgType":I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 351
    :cond_0
    check-cast v2, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;

    .end local v2    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 353
    .restart local v2    # "pdu":Lcom/motorola/messaging/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/motorola/messaging/util/MmsException;

    invoke-direct {v3}, Lcom/motorola/messaging/util/MmsException;-><init>()V

    throw v3
.end method

.method private init(Ljava/util/List;Lorg/w3c/dom/smil/SMILDocument;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 0
    .param p2, "documentCache"    # Lorg/w3c/dom/smil/SMILDocument;
    .param p3, "pbCache"    # Lcom/motorola/messaging/pdu/PduBody;
    .param p6, "trackModelChanges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/motorola/messaging/pdu/PduBody;",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/model/RegionModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "slides":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/SlideModel;>;"
    .local p4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/MediaModel;>;"
    .local p5, "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/messaging/model/RegionModel;>;"
    iput-object p1, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    .line 106
    iput-object p2, p0, Lcom/motorola/messaging/model/SmilModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 107
    iput-object p3, p0, Lcom/motorola/messaging/model/SmilModel;->mPduBodyCache:Lcom/motorola/messaging/pdu/PduBody;

    .line 108
    iput-object p5, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    .line 109
    iput-object p4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    .line 110
    invoke-direct {p0, p6}, Lcom/motorola/messaging/model/SmilModel;->setSmilModelInfoOnChildren(Z)V

    .line 111
    return-void
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;)Lcom/motorola/messaging/pdu/PduBody;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "document"    # Lorg/w3c/dom/smil/SMILDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 496
    sget-boolean v9, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v9, :cond_0

    .line 497
    const-string v9, "SmilModel"

    const-string v10, "makePduBody"

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    new-instance v6, Lcom/motorola/messaging/pdu/PduBody;

    invoke-direct {v6}, Lcom/motorola/messaging/pdu/PduBody;-><init>()V

    .line 502
    .local v6, "pb":Lcom/motorola/messaging/pdu/PduBody;
    iget-object v9, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/messaging/model/SlideModel;

    .line 503
    .local v7, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v7}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/MediaModel;

    .line 504
    .local v2, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-direct {p0, p1, v2}, Lcom/motorola/messaging/model/SmilModel;->makePduPart(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v5

    .line 506
    .local v5, "part":Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v5, :cond_2

    .line 507
    invoke-virtual {v6, v5}, Lcom/motorola/messaging/pdu/PduBody;->addPart(Lcom/motorola/messaging/pdu/PduPart;)Z

    goto :goto_0

    .line 515
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v5    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v7    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_3
    iget-object v9, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/MediaModel;

    .line 516
    .local v3, "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-direct {p0, p1, v3}, Lcom/motorola/messaging/model/SmilModel;->makePduPart(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v5

    .line 518
    .restart local v5    # "part":Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v5, :cond_4

    .line 519
    invoke-virtual {v6, v5}, Lcom/motorola/messaging/pdu/PduBody;->addPart(Lcom/motorola/messaging/pdu/PduPart;)Z

    goto :goto_1

    .line 526
    .end local v3    # "model":Lcom/motorola/messaging/model/MediaModel;
    .end local v5    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_5
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 527
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p2, v4}, Lcom/motorola/messaging/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 528
    new-instance v8, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct {v8}, Lcom/motorola/messaging/pdu/PduPart;-><init>()V

    .line 529
    .local v8, "smilPart":Lcom/motorola/messaging/pdu/PduPart;
    const-string v9, "smil"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentId([B)V

    .line 530
    const-string v9, "smil.xml"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 531
    const-string v9, "application/smil"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    .line 532
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    .line 533
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Lcom/motorola/messaging/pdu/PduBody;->addPart(ILcom/motorola/messaging/pdu/PduPart;)V

    .line 535
    return-object v6
.end method

.method private makePduPart(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Lcom/motorola/messaging/pdu/PduPart;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/motorola/messaging/model/MediaModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 540
    sget-boolean v4, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 541
    const-string v4, "SmilModel"

    const-string v5, "makePduPart"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    new-instance v1, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct {v1}, Lcom/motorola/messaging/pdu/PduPart;-><init>()V

    .line 547
    .local v1, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    .line 550
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getEncodedSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setFilename([B)V

    .line 553
    invoke-direct {p0, p2}, Lcom/motorola/messaging/model/SmilModel;->generateEncodedLocation(Lcom/motorola/messaging/model/MediaModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 556
    invoke-direct {p0, p2}, Lcom/motorola/messaging/model/SmilModel;->generateEncodedContentId(Lcom/motorola/messaging/model/MediaModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setContentId([B)V

    .line 558
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v3

    .line 560
    .local v3, "wrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    invoke-virtual {v3}, Lcom/motorola/messaging/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 561
    invoke-virtual {v3}, Lcom/motorola/messaging/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    .line 597
    .end local v1    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v3    # "wrapper":Lcom/motorola/messaging/drm/DrmWrapper;
    .end local p2    # "media":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-object v1

    .line 563
    .restart local v1    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .restart local p2    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v4, p2

    .line 565
    check-cast v4, Lcom/motorola/messaging/model/TextModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 568
    const/4 v1, 0x0

    goto :goto_0

    .line 570
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    .line 571
    check-cast p2, Lcom/motorola/messaging/model/TextModel;

    .end local p2    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p2}, Lcom/motorola/messaging/model/TextModel;->getCharset()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setCharset(I)V

    goto :goto_0

    .line 578
    .end local v2    # "text":Ljava/lang/String;
    .restart local p2    # "media":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_1
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 579
    .local v0, "modelUri":Landroid/net/Uri;
    if-nez v0, :cond_3

    move-object v4, p2

    .line 580
    check-cast v4, Lcom/motorola/messaging/model/TextModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    move-object v4, p2

    .line 581
    check-cast v4, Lcom/motorola/messaging/model/TextModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/TextModel;->getCharset()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setCharset(I)V

    .line 582
    invoke-direct {p0, p2}, Lcom/motorola/messaging/model/SmilModel;->generateEncodedLocation(Lcom/motorola/messaging/model/MediaModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setName([B)V

    goto :goto_0

    .line 585
    :cond_3
    invoke-direct {p0, p2}, Lcom/motorola/messaging/model/SmilModel;->generateEncodedLocation(Lcom/motorola/messaging/model/MediaModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setName([B)V

    move-object v4, p2

    .line 586
    check-cast v4, Lcom/motorola/messaging/model/TextModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/TextModel;->getCharset()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setCharset(I)V

    .line 592
    .end local v0    # "modelUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/messaging/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseAttachments(Landroid/content/Context;Lcom/motorola/messaging/pdu/PduBody;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pduBody"    # Lcom/motorola/messaging/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/motorola/messaging/pdu/PduBody;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/model/MediaModel;>;"
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 456
    .local v4, "partNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 459
    :try_start_0
    iget-object v5, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {p2, v2}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/motorola/messaging/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lcom/motorola/messaging/pdu/PduPart;)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v3

    .line 462
    .local v3, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v3, :cond_0

    .line 463
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 456
    .end local v3    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "ex":Lcom/motorola/messaging/util/MmsException;
    const-string v5, "SmilModel"

    const-string v6, "error while creating attachment"

    invoke-static {v5, v6, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 468
    .end local v1    # "ex":Lcom/motorola/messaging/util/MmsException;
    :catch_1
    move-exception v1

    .line 469
    .local v1, "ex":Lcom/motorola/messaging/model/ContentRestrictionException;
    invoke-virtual {p0, v1}, Lcom/motorola/messaging/model/SmilModel;->handleContentException(Lcom/motorola/messaging/model/ContentRestrictionException;)V

    .line 470
    const-string v5, "SmilModel"

    const-string v6, "attachment is not supported"

    invoke-static {v5, v6, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 475
    .end local v1    # "ex":Lcom/motorola/messaging/model/ContentRestrictionException;
    :cond_1
    return-object v0
.end method

.method private static parseRegions(Lorg/w3c/dom/smil/SMILLayoutElement;)Ljava/util/Map;
    .locals 9
    .param p0, "sle"    # Lorg/w3c/dom/smil/SMILLayoutElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/model/RegionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v3, "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/messaging/model/RegionModel;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 361
    .local v1, "nlRegions":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 363
    .local v4, "regionsNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 364
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 365
    .local v5, "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v2, Lcom/motorola/messaging/model/RegionModel;

    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v7

    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v8

    invoke-direct {v2, v6, v7, v8}, Lcom/motorola/messaging/model/RegionModel;-><init>(Ljava/lang/String;II)V

    .line 366
    .local v2, "r":Lcom/motorola/messaging/model/RegionModel;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/motorola/messaging/model/RegionModel;->setWidth(I)V

    .line 367
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/motorola/messaging/model/RegionModel;->setHeight(I)V

    .line 368
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "r":Lcom/motorola/messaging/model/RegionModel;
    .end local v5    # "sre":Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_0
    return-object v3
.end method

.method private parseSlides(Landroid/content/Context;Lorg/w3c/dom/smil/SMILElement;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/Map;)Ljava/util/List;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "docBody"    # Lorg/w3c/dom/smil/SMILElement;
    .param p3, "pb"    # Lcom/motorola/messaging/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/w3c/dom/smil/SMILElement;",
            "Lcom/motorola/messaging/pdu/PduBody;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/model/RegionModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    .local p4, "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/motorola/messaging/model/RegionModel;>;"
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 401
    .local v14, "slideNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 402
    .local v16, "slidesNum":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v15, "slides":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/model/SlideModel;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    .line 406
    :try_start_0
    invoke-interface {v14, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/smil/SMILParElement;

    .line 407
    .local v12, "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface {v12}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 408
    .local v9, "mediaNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 409
    .local v10, "mediaNum":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v11, "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/model/MediaModel;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_1

    .line 413
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILMediaElement;
    :try_end_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    .local v17, "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/motorola/messaging/pdu/PduBody;Ljava/util/Map;)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v8

    .line 417
    .local v8, "media":Lcom/motorola/messaging/model/MediaModel;
    if-eqz v8, :cond_0

    .line 418
    check-cast v17, Lorg/w3c/dom/events/EventTarget;

    .end local v17    # "sme":Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/motorola/messaging/dom/smil/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/motorola/messaging/model/MediaModel;)V

    .line 419
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 412
    .end local v8    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 421
    :catch_0
    move-exception v5

    .line 422
    .local v5, "ex":Lcom/motorola/messaging/util/MmsException;
    :try_start_2
    const-string v18, "SmilModel"

    const-string v19, "error while creating media"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 435
    .end local v5    # "ex":Lcom/motorola/messaging/util/MmsException;
    .end local v7    # "j":I
    .end local v9    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "mediaNum":I
    .end local v11    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/model/MediaModel;>;"
    .end local v12    # "par":Lorg/w3c/dom/smil/SMILParElement;
    :catch_1
    move-exception v5

    .line 436
    .local v5, "ex":Lcom/motorola/messaging/model/ContentRestrictionException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/motorola/messaging/model/SmilModel;->handleContentException(Lcom/motorola/messaging/model/ContentRestrictionException;)V

    .line 437
    const-string v18, "SmilModel"

    const-string v19, "slide has unsupported content"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    .end local v5    # "ex":Lcom/motorola/messaging/model/ContentRestrictionException;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 424
    .restart local v7    # "j":I
    .restart local v9    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .restart local v10    # "mediaNum":I
    .restart local v11    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/model/MediaModel;>;"
    .restart local v12    # "par":Lorg/w3c/dom/smil/SMILParElement;
    :catch_2
    move-exception v5

    .line 425
    .restart local v5    # "ex":Lcom/motorola/messaging/model/ContentRestrictionException;
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/motorola/messaging/model/SmilModel;->handleContentException(Lcom/motorola/messaging/model/ContentRestrictionException;)V

    .line 426
    const-string v18, "SmilModel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "media is not supported, mode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 432
    .end local v5    # "ex":Lcom/motorola/messaging/model/ContentRestrictionException;
    :cond_1
    new-instance v13, Lcom/motorola/messaging/model/SlideModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0, v11}, Lcom/motorola/messaging/model/SlideModel;-><init>(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/util/List;)V

    .line 433
    .local v13, "slide":Lcom/motorola/messaging/model/SlideModel;
    check-cast v12, Lorg/w3c/dom/events/EventTarget;

    .end local v12    # "par":Lorg/w3c/dom/smil/SMILParElement;
    invoke-static {v12, v13}, Lcom/motorola/messaging/dom/smil/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/motorola/messaging/model/SlideModel;)V

    .line 434
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 442
    .end local v7    # "j":I
    .end local v9    # "mediaNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "mediaNum":I
    .end local v11    # "mediaSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/model/MediaModel;>;"
    .end local v13    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_2
    return-object v15
.end method

.method public static readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 315
    if-eqz p1, :cond_0

    .line 316
    const-class v0, Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 317
    const-string v0, "SmilModel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/SmilModel;

    .line 319
    if-eqz v0, :cond_0

    .line 322
    invoke-direct {v0, p0}, Lcom/motorola/messaging/model/SmilModel;->setContext(Landroid/content/Context;)V

    .line 326
    :cond_0
    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/SlideModel;

    .line 337
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v2, p1}, Lcom/motorola/messaging/model/SlideModel;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 339
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 340
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/motorola/messaging/model/MediaModel;->setContext(Landroid/content/Context;)V

    goto :goto_1

    .line 342
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_1
    return-void
.end method

.method private setSmilModelInfoOnChildren(Z)V
    .locals 3
    .param p1, "trackModelChanges"    # Z

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getSlides()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/SlideModel;

    .line 273
    .local v1, "model":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v1, p0}, Lcom/motorola/messaging/model/SlideModel;->setParent(Lcom/motorola/messaging/model/SmilModel;)V

    goto :goto_0

    .line 277
    .end local v1    # "model":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p0, p0}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 280
    :cond_1
    return-void
.end method

.method private validateSize(Lcom/motorola/messaging/model/SlideModel;)V
    .locals 4
    .param p1, "slide"    # Lcom/motorola/messaging/model/SlideModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1086
    sget-boolean v1, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1087
    const-string v1, "SmilModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateSize, creationMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 1091
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getTextSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SlideModel;->getTextSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkTextSize(I)V

    .line 1092
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SlideModel;->getNonTextMediaSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkNonTextMediaSize(I)V

    .line 1093
    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/motorola/messaging/model/MediaModel;)Z
    .locals 3
    .param p1, "attachment"    # Lcom/motorola/messaging/model/MediaModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 722
    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p1}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/motorola/messaging/model/SmilModel;->validateSize(II)V

    .line 724
    iget-object v1, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addSlide(Lcom/motorola/messaging/model/SlideModel;)Z
    .locals 4
    .param p1, "slide"    # Lcom/motorola/messaging/model/SlideModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 687
    if-eqz p1, :cond_1

    .line 688
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/SmilModel;->validateSize(Lcom/motorola/messaging/model/SlideModel;)V

    .line 689
    invoke-virtual {p1, p0}, Lcom/motorola/messaging/model/SlideModel;->setParent(Lcom/motorola/messaging/model/SmilModel;)V

    .line 690
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    invoke-virtual {p1, p0}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 692
    iget-object v3, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/IModelChangedObserver;

    .line 693
    .local v1, "observer":Lcom/motorola/messaging/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_0

    .line 695
    .end local v1    # "observer":Lcom/motorola/messaging/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 699
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 737
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 740
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 741
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 742
    return-void
.end method

.method public clearActions()V
    .locals 3

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/SlideModel;

    .line 1062
    .local v1, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->clearActions()V

    goto :goto_0

    .line 1064
    .end local v1    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    return-void
.end method

.method public exceedsMsgSizeLimit()Z
    .locals 5

    .prologue
    .line 1099
    sget-boolean v3, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 1100
    const-string v3, "SmilModel"

    const-string v4, "exceedsMsgSizeLimit"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_0
    const/4 v2, 0x0

    .line 1106
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v3}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 1107
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getTextSize()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/motorola/messaging/model/ContentRestriction;->checkTextSize(I)V

    .line 1108
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/motorola/messaging/model/ContentRestriction;->checkNonTextMediaSize(I)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/messaging/model/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1115
    .end local v0    # "cr":Lcom/motorola/messaging/model/ContentRestriction;
    :goto_0
    return v2

    .line 1109
    :catch_0
    move-exception v1

    .line 1110
    .local v1, "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    const/4 v2, 0x1

    .line 1113
    goto :goto_0

    .line 1111
    .end local v1    # "e":Lcom/motorola/messaging/model/ExceedMessageSizeException;
    :catch_1
    move-exception v1

    .line 1112
    .local v1, "e":Lcom/motorola/messaging/model/ContentRestrictionException;
    const-string v3, "SmilModel"

    const-string v4, "Failed to check message size"

    invoke-static {v3, v4, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAttachment(I)Lcom/motorola/messaging/model/MediaModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getAttachmentsCount()I
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNonTextMediaSize()I
    .locals 2

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getTextSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRegions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/motorola/messaging/model/RegionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRootLayout()Lcom/motorola/messaging/model/RegionModel;
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultRootRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleSlide()Lcom/motorola/messaging/model/MediaModel;
    .locals 3

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->hasSimpleSlideshow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v1

    .line 787
    .local v1, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->getImage()Lcom/motorola/messaging/model/ImageModel;

    move-result-object v0

    .line 795
    .end local v1    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    :goto_0
    return-object v0

    .line 789
    .restart local v1    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->getVideo()Lcom/motorola/messaging/model/VideoModel;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->getAudio()Lcom/motorola/messaging/model/AudioModel;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 7

    .prologue
    .line 638
    const/4 v2, 0x0

    .line 639
    .local v2, "size":I
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/SlideModel;

    .line 640
    .local v3, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/SlideModel;->getTextSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 641
    invoke-virtual {v3}, Lcom/motorola/messaging/model/SlideModel;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 644
    .end local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    .line 645
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 648
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_1
    sget-boolean v4, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v4, :cond_2

    .line 649
    const-string v4, "SmilModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_2
    return v2
.end method

.method public getSlide(I)Lcom/motorola/messaging/model/SlideModel;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 848
    const/4 v2, 0x0

    .line 850
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/motorola/messaging/model/SlideModel;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-object v2

    .line 851
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "SmilModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException while trying to get a slide at the following position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSlideCount()I
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSlides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    return-object v0
.end method

.method public getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    if-nez v0, :cond_0

    .line 1050
    invoke-static {p0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->getDocument(Lcom/motorola/messaging/model/SmilModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method public getTextSize()I
    .locals 6

    .prologue
    .line 660
    const/4 v1, 0x0

    .line 661
    .local v1, "size":I
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/SlideModel;

    .line 662
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->getTextSize()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 665
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    sget-boolean v3, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 666
    const-string v3, "SmilModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTextSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_1
    return v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x7

    return v0
.end method

.method handleContentException(Lcom/motorola/messaging/model/ContentRestrictionException;)V
    .locals 4
    .param p1, "ex"    # Lcom/motorola/messaging/model/ContentRestrictionException;

    .prologue
    const/4 v3, 0x1

    .line 375
    sget-boolean v0, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "SmilModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleContentException, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    instance-of v0, p1, Lcom/motorola/messaging/model/RestrictedModeException;

    if-eqz v0, :cond_2

    .line 380
    iput-boolean v3, p0, Lcom/motorola/messaging/model/SmilModel;->mIsRestrictedContentRemoved:Z

    .line 389
    :goto_0
    sget-boolean v0, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 390
    const-string v0, "SmilModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleContentExceptionrestricted  content removed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/messaging/model/SmilModel;->mIsRestrictedContentRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "oversized   content removed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/messaging/model/SmilModel;->mIsOversizedContentRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unsupported content removed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/messaging/model/SmilModel;->mIsUnsupportedContentRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_1
    return-void

    .line 382
    :cond_2
    instance-of v0, p1, Lcom/motorola/messaging/model/ExceedMessageSizeException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/motorola/messaging/model/ResolutionException;

    if-eqz v0, :cond_4

    .line 383
    :cond_3
    iput-boolean v3, p0, Lcom/motorola/messaging/model/SmilModel;->mIsOversizedContentRemoved:Z

    goto :goto_0

    .line 386
    :cond_4
    iput-boolean v3, p0, Lcom/motorola/messaging/model/SmilModel;->mIsUnsupportedContentRemoved:Z

    goto :goto_0
.end method

.method public hasSimpleSlideshow()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 807
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v1

    .line 811
    :cond_1
    invoke-virtual {p0, v1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v0

    .line 814
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 817
    :cond_2
    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v3

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 822
    goto :goto_0
.end method

.method public isForwardable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1146
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/SlideModel;

    .line 1147
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->isForwardable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1157
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :goto_0
    return v3

    .line 1152
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 1153
    .local v0, "attachment":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->isForwardable()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1157
    .end local v0    # "attachment":Lcom/motorola/messaging/model/MediaModel;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isOversizedContentRemoved()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/motorola/messaging/model/SmilModel;->mIsOversizedContentRemoved:Z

    return v0
.end method

.method public isRestrictedContentRemoved()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/motorola/messaging/model/SmilModel;->mIsRestrictedContentRemoved:Z

    return v0
.end method

.method public isSaveable()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1166
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/SlideModel;

    .line 1167
    .local v2, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/SlideModel;->isSaveable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1178
    .end local v2    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :goto_0
    return v3

    .line 1172
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 1173
    .local v0, "attachment":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->isSaveable()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1178
    .end local v0    # "attachment":Lcom/motorola/messaging/model/MediaModel;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUnsupportedContentRemoved()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/motorola/messaging/model/SmilModel;->mIsUnsupportedContentRemoved:Z

    return v0
.end method

.method public moveSlide(II)V
    .locals 2
    .param p1, "srcPosition"    # I
    .param p2, "destPosition"    # I

    .prologue
    .line 708
    iget-object v1, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/SlideModel;

    .line 709
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v0, :cond_0

    .line 710
    iget-object v1, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 711
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/motorola/messaging/model/Model;Z)V
    .locals 5
    .param p1, "model"    # Lcom/motorola/messaging/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    const/4 v3, 0x0

    .line 974
    if-eqz p2, :cond_1

    .line 975
    iput-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 976
    iput-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mPduBodyCache:Lcom/motorola/messaging/pdu/PduBody;

    .line 977
    instance-of v3, p1, Lcom/motorola/messaging/model/SlideModel;

    if-eqz v3, :cond_1

    .line 978
    check-cast p1, Lcom/motorola/messaging/model/SlideModel;

    .end local p1    # "model":Lcom/motorola/messaging/model/Model;
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

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

    .line 979
    .local v1, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v1}, Lcom/motorola/messaging/model/MediaModel;->getRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v2

    .line 980
    .local v2, "region":Lcom/motorola/messaging/model/RegionModel;
    if-eqz v2, :cond_0

    .line 981
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 986
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v2    # "region":Lcom/motorola/messaging/model/RegionModel;
    :cond_1
    return-void
.end method

.method public prepareToSend()V
    .locals 3

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1024
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->getText()Lcom/motorola/messaging/model/TextModel;

    move-result-object v0

    .line 1025
    .local v0, "text":Lcom/motorola/messaging/model/TextModel;
    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0}, Lcom/motorola/messaging/model/TextModel;->cloneText()V

    .line 1029
    .end local v0    # "text":Lcom/motorola/messaging/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 5
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 929
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/RegionModel;

    .line 930
    .local v2, "region":Lcom/motorola/messaging/model/RegionModel;
    invoke-virtual {v2, p1}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_0

    .line 933
    .end local v2    # "region":Lcom/motorola/messaging/model/RegionModel;
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/SlideModel;

    .line 934
    .local v3, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v3, p1}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_1

    .line 937
    .end local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 938
    .local v0, "attachment":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_2

    .line 940
    .end local v0    # "attachment":Lcom/motorola/messaging/model/MediaModel;
    :cond_2
    return-void
.end method

.method public removeAllSlides()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 923
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 924
    return-void
.end method

.method public removeAttachment(Lcom/motorola/messaging/model/MediaModel;)Z
    .locals 2
    .param p1, "model"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    .line 903
    iget-object v1, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 904
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 905
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 907
    :cond_0
    return v0
.end method

.method public removeSlide(I)Lcom/motorola/messaging/model/SlideModel;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 874
    iget-object v1, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/SlideModel;

    .line 875
    .local v0, "slide":Lcom/motorola/messaging/model/SlideModel;
    if-eqz v0, :cond_0

    .line 876
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/SlideModel;->setParent(Lcom/motorola/messaging/model/SmilModel;)V

    .line 877
    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    .line 878
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 880
    :cond_0
    return-object v0
.end method

.method public saveAllMedia()Ljava/util/List;
    .locals 6
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
    .line 1123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;>;"
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/SlideModel;

    .line 1126
    .local v3, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/SlideModel;->saveAllMedia()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1129
    .end local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 1130
    .local v0, "attachment":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->isSaveable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1131
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/motorola/messaging/model/MediaModel;->save(Ljava/lang/String;Z)Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1135
    .end local v0    # "attachment":Lcom/motorola/messaging/model/MediaModel;
    :cond_2
    return-object v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public sync(Lcom/motorola/messaging/pdu/PduBody;)V
    .locals 7
    .param p1, "pduBody"    # Lcom/motorola/messaging/pdu/PduBody;

    .prologue
    .line 993
    sget-boolean v5, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 994
    const-string v5, "SmilModel"

    const-string v6, "sync"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_0
    iget-object v5, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/messaging/model/SlideModel;

    .line 998
    .local v4, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v4}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/MediaModel;

    .line 1001
    .local v2, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/MediaModel;->getEncodedSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/motorola/messaging/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v3

    .line 1002
    .local v3, "part":Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v3, :cond_2

    .line 1003
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/messaging/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1007
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v3    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v4    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_3
    iget-object v5, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/MediaModel;

    .line 1010
    .restart local v2    # "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/MediaModel;->getEncodedSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/motorola/messaging/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v3

    .line 1011
    .restart local v3    # "part":Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v3, :cond_4

    .line 1012
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/messaging/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 1015
    .end local v2    # "media":Lcom/motorola/messaging/model/MediaModel;
    .end local v3    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_5
    return-void
.end method

.method public toPduBody(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduBody;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 483
    sget-boolean v0, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "SmilModel"

    const-string v1, "toPduBody"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mPduBodyCache:Lcom/motorola/messaging/pdu/PduBody;

    if-nez v0, :cond_1

    .line 488
    invoke-static {p0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->getDocument(Lcom/motorola/messaging/model/SmilModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 489
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/model/SmilModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;)Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mPduBodyCache:Lcom/motorola/messaging/pdu/PduBody;

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/model/SmilModel;->mPduBodyCache:Lcom/motorola/messaging/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 5

    .prologue
    .line 960
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/RegionModel;

    .line 961
    .local v2, "region":Lcom/motorola/messaging/model/RegionModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 964
    .end local v2    # "region":Lcom/motorola/messaging/model/RegionModel;
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/SlideModel;

    .line 965
    .local v3, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_1

    .line 968
    .end local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 969
    .local v0, "attachment":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_2

    .line 971
    .end local v0    # "attachment":Lcom/motorola/messaging/model/MediaModel;
    :cond_2
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 5
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 945
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/RegionModel;

    .line 946
    .local v2, "region":Lcom/motorola/messaging/model/RegionModel;
    invoke-virtual {v2, p1}, Lcom/motorola/messaging/model/Model;->unregisterModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_0

    .line 949
    .end local v2    # "region":Lcom/motorola/messaging/model/RegionModel;
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/model/SlideModel;

    .line 950
    .local v3, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v3, p1}, Lcom/motorola/messaging/model/Model;->unregisterModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_1

    .line 953
    .end local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 954
    .local v0, "attachment":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/Model;->unregisterModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    goto :goto_2

    .line 956
    .end local v0    # "attachment":Lcom/motorola/messaging/model/MediaModel;
    :cond_2
    return-void
.end method

.method validateSize(II)V
    .locals 4
    .param p1, "addedMediaType"    # I
    .param p2, "addedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 1075
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    sget-boolean v1, Lcom/motorola/messaging/model/SmilModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1076
    const-string v1, "SmilModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validateSize. addedSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addedMediaType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1079
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getTextSize()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkTextSize(I)V

    .line 1083
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getNonTextMediaSize()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkNonTextMediaSize(I)V

    goto :goto_0
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    const-string v0, "SmilModel"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 303
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 251
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/Model;->writeToParcel(Landroid/os/Parcel;I)V

    .line 254
    iget-boolean v3, p0, Lcom/motorola/messaging/model/SmilModel;->mIsUnsupportedContentRemoved:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-boolean v3, p0, Lcom/motorola/messaging/model/SmilModel;->mIsOversizedContentRemoved:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-boolean v3, p0, Lcom/motorola/messaging/model/SmilModel;->mIsRestrictedContentRemoved:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v2, "regionsBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, "regionKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mRegions:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "regionKey":Ljava/lang/String;
    .end local v2    # "regionsBundle":Landroid/os/Bundle;
    :cond_0
    move v3, v5

    .line 254
    goto :goto_0

    :cond_1
    move v3, v5

    .line 255
    goto :goto_1

    :cond_2
    move v4, v5

    .line 256
    goto :goto_2

    .line 261
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "regionsBundle":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 262
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mSlides:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 263
    iget-object v3, p0, Lcom/motorola/messaging/model/SmilModel;->mAttachments:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 264
    return-void
.end method
