.class public final Lcom/motorola/messaging/model/ICalModel;
.super Lcom/motorola/messaging/model/TextModel;
.source "ICalModel.java"


# static fields
.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/ICalModel;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
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
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "charset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lcom/motorola/messaging/model/ContentRestrictionException;,
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected calculateSize()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->calculateSizeFromUri()V

    .line 101
    return-void
.end method

.method protected checkContentRestriction()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 110
    sget-boolean v1, Lcom/motorola/messaging/model/ICalModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "IcalModel"

    const-string v2, "checkContentRestriction"

    invoke-static {v1, v3, v3, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 115
    .local v0, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkCalendarContentType(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method protected getNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x6

    return v0
.end method

.method protected setDefaultRegion()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/TextModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    return-void
.end method
