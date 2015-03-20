.class public Lcom/motorola/messaging/model/ContentRestrictionMode;
.super Lcom/motorola/messaging/model/ContentRestriction;
.source "ContentRestrictionMode.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionMode;->DEBUG:Z

    .line 27
    sget-boolean v1, Lcom/motorola/messaging/model/ContentRestrictionMode;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/motorola/messaging/model/CarrierContentRestriction;)V
    .locals 0
    .param p1, "carrierRestriction"    # Lcom/motorola/messaging/model/CarrierContentRestriction;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/motorola/messaging/model/ContentRestriction;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    .line 33
    return-void
.end method

.method private contentTypeException(Ljava/lang/String;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content type exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/model/RestrictedModeUnsupportedContentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nonCoreException(Ljava/lang/String;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/RestrictedModeNonCoreException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content type exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/motorola/messaging/model/RestrictedModeNonCoreException;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/model/RestrictedModeNonCoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkAudioContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 125
    sget-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAudioContentType, contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    .line 134
    const-string v0, "audio/amr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/midi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/qcelp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non core audio, content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/ContentRestrictionMode;->contentTypeException(Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void
.end method

.method public checkCalendarContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 161
    sget-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCalendarContentType, contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkCalendarContentType(Ljava/lang/String;)V

    .line 169
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/vcs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non core calendar, content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/ContentRestrictionMode;->contentTypeException(Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void
.end method

.method public checkImageContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 107
    sget-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkImageContentType, contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 115
    const-string v0, "image/jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/vnd.wap.wbmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non core image, content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/ContentRestrictionMode;->nonCoreException(Ljava/lang/String;)V

    .line 120
    :cond_1
    return-void
.end method

.method public checkNonTextMediaSize(I)V
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 178
    sget-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNonTextMediaSize, media size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    iget-object v1, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getNonTextMediaSizeLimit()J

    move-result-wide v1

    const-string v3, "NON TEXT MEDIA"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/motorola/messaging/model/ContentRestriction;->validateSize(IJLjava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestrictionMode;->getNonTextMediaSizeLimit()J

    move-result-wide v0

    const-string v2, "NON TEXT MEDIA"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/motorola/messaging/model/ContentRestriction;->validateSize(IJLjava/lang/String;)V

    .line 187
    return-void
.end method

.method public checkVideoContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v0, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVideoContentType, contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V

    .line 153
    const-string v0, "video/3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non core audio, content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/model/ContentRestrictionMode;->contentTypeException(Ljava/lang/String;)V

    .line 156
    :cond_1
    return-void
.end method

.method protected exceedMessageSizeException(Ljava/lang/String;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "ContentRestrictionMode"

    const-string v1, "size exception"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/model/RestrictedModeExceedSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMmsMaxImageHeight()I
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getMmsMaxImageHeight()I

    move-result v1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsRMMaxImageHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 72
    .local v0, "height":I
    sget-boolean v1, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "ContentRestrictionMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maximum picture height for restricted mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return v0
.end method

.method public getMmsMaxImageWidth()I
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getMmsMaxImageWidth()I

    move-result v1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsRMMaxImageWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 61
    .local v0, "width":I
    sget-boolean v1, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "ContentRestrictionMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maximum picture width for restricted mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return v0
.end method

.method public getMmsMaxMessageSize()J
    .locals 8

    .prologue
    .line 81
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getRMMmsMaximumMessageSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getHeaderSizeLimit()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 83
    .local v2, "rMMaxMsgSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 84
    const-wide/16 v2, 0x0

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getMmsMaxMessageSize()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getHeaderSizeLimit()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getHeaderSizeLimit()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getMmsMaxMessageSize()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 97
    .local v0, "maximumSize":J
    sget-boolean v4, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v4, :cond_2

    .line 98
    const-string v4, "ContentRestrictionMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maximum mms size for restricted mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_2
    return-wide v0
.end method

.method public getNonTextMediaSizeLimit()J
    .locals 5

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestrictionMode;->getMmsMaxMessageSize()J

    move-result-wide v0

    .line 193
    .local v0, "limit":J
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRequiredMMSC()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    const-wide/32 v2, 0x4b000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/model/ContentRestrictionMode;->mCarrierRestriction:Lcom/motorola/messaging/model/CarrierContentRestriction;

    invoke-virtual {v2}, Lcom/motorola/messaging/model/CarrierContentRestriction;->getCreationMode()Lcom/motorola/messaging/model/Model$CreationMode;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/model/Model$CreationMode;->SLIDESHOW:Lcom/motorola/messaging/model/Model$CreationMode;

    if-ne v2, v3, :cond_1

    .line 199
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMinNumOfMediasOnSlideshow()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 202
    :cond_1
    sget-boolean v2, Lcom/motorola/messaging/model/ContentRestrictionMode;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 203
    const-string v2, "ContentRestrictionMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "non text media size for restricted mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    return-wide v0
.end method

.method public resolutionException(Ljava/lang/String;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/RestrictedModeResolutionException;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "ContentRestrictionMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolution exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/motorola/messaging/model/RestrictedModeResolutionException;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/model/RestrictedModeResolutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
