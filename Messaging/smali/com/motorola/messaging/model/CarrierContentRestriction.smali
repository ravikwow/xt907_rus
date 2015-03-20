.class public Lcom/motorola/messaging/model/CarrierContentRestriction;
.super Lcom/motorola/messaging/model/ContentRestriction;
.source "CarrierContentRestriction.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/motorola/messaging/model/CarrierContentRestriction;->DEBUG:Z

    .line 26
    sget-boolean v1, Lcom/motorola/messaging/model/CarrierContentRestriction;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/model/CarrierContentRestriction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/motorola/messaging/model/Model$CreationMode;)V
    .locals 0
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/messaging/model/ContentRestriction;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/motorola/messaging/model/CarrierContentRestriction;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 32
    return-void
.end method


# virtual methods
.method public checkNonTextMediaSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 81
    sget-boolean v0, Lcom/motorola/messaging/model/CarrierContentRestriction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "CarrierContentRestriction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNonTextMediaSize, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getNonTextMediaSizeLimit()J

    move-result-wide v0

    const-string v2, "NON TEXT MEDIA"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/motorola/messaging/model/ContentRestriction;->validateSize(IJLjava/lang/String;)V

    .line 86
    return-void
.end method

.method public getCreationMode()Lcom/motorola/messaging/model/Model$CreationMode;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/messaging/model/CarrierContentRestriction;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    return-object v0
.end method

.method public getMmsMaxImageHeight()I
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxImageHeight()I

    move-result v0

    .line 71
    .local v0, "mmsMaxMessageHeight":I
    iget-object v1, p0, Lcom/motorola/messaging/model/CarrierContentRestriction;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    if-ne v1, v2, :cond_0

    .line 72
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSlideshowMaxImageHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method public getMmsMaxImageWidth()I
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxImageWidth()I

    move-result v0

    .line 59
    .local v0, "mmsMaxMessageWidth":I
    iget-object v1, p0, Lcom/motorola/messaging/model/CarrierContentRestriction;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    if-ne v1, v2, :cond_0

    .line 60
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSlideshowMaxImageWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64
    :cond_0
    return v0
.end method

.method public getMmsMaxMessageSize()J
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumMessageSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getHeaderSizeLimit()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 48
    .local v0, "maxMessageSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 49
    const-wide/16 v0, 0x0

    .line 52
    :cond_0
    return-wide v0
.end method

.method public getNonTextMediaSizeLimit()J
    .locals 5

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getMmsMaxMessageSize()J

    move-result-wide v0

    .line 92
    .local v0, "limit":J
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRequiredMMSC()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    const-wide/32 v2, 0x4b000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/model/CarrierContentRestriction;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    sget-object v3, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    if-ne v2, v3, :cond_1

    .line 98
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMinNumOfMediasOnSlideshow()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 101
    :cond_1
    sget-boolean v2, Lcom/motorola/messaging/model/CarrierContentRestriction;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 102
    const-string v2, "CarrierContentRestriction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNonTextMediaSizeLimit, limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2
    return-wide v0
.end method

.method protected resolutionException(Ljava/lang/String;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ResolutionException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "CarrierContentRestriction"

    const-string v1, "resolutionException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lcom/motorola/messaging/model/ResolutionException;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/model/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
