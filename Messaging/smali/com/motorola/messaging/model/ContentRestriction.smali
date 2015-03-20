.class public abstract Lcom/motorola/messaging/model/ContentRestriction;
.super Ljava/lang/Object;
.source "ContentRestriction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/model/ContentRestriction$1;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method private validateContentType(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "supportedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "ContentRestriction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateContentType - contentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    new-instance v2, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    const-string v3, "Null or empty content type"

    invoke-direct {v2, v3}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 282
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 283
    const/4 v2, 0x0

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMimeTypeBlackList()Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "mimeTypeBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    new-instance v2, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is at mime type black list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 298
    invoke-static {p1}, Lcom/motorola/messaging/mime/MmsContentType;->getCommonContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "commonContentType":Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/messaging/frameworkadapter/content/MediaFile;->isMimeTypeSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 300
    new-instance v2, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported content type : specific = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", common = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    .end local v0    # "commonContentType":Ljava/lang/String;
    :cond_4
    return-void
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
    .line 98
    invoke-static {p1}, Lcom/motorola/messaging/mime/MmsContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/motorola/messaging/mime/MmsContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/model/ContentRestriction;->validateContentType(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content type is not an audio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 128
    invoke-static {p1}, Lcom/motorola/messaging/mime/MmsContentType;->isCalendarType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content type is not a calendar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method public checkCardContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p1}, Lcom/motorola/messaging/mime/MmsContentType;->isCardType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content type is not a card : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
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
    .line 83
    invoke-static {p1}, Lcom/motorola/messaging/mime/MmsContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/motorola/messaging/mime/MmsContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/model/ContentRestriction;->validateContentType(Ljava/lang/String;Ljava/util/List;)V

    .line 89
    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content type is not an image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkImageResolution(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageWidth()I

    move-result v2

    .line 177
    .local v2, "widthLimit":I
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageHeight()I

    move-result v1

    .line 179
    .local v1, "heightLimit":I
    sget-boolean v3, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 180
    const-string v3, "ContentRestriction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkImageResolution, widthLimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", heightLimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    if-le p1, p2, :cond_1

    if-gt v1, v2, :cond_2

    :cond_1
    if-le p2, p1, :cond_3

    if-le v2, v1, :cond_3

    .line 188
    :cond_2
    move v0, v1

    .line 189
    .local v0, "aux":I
    move v1, v2

    .line 190
    move v2, v0

    .line 191
    sget-boolean v3, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 192
    const-string v3, "ContentRestriction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkResolution (adjust portrait/landscape mode), widthLimit= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", heightLimit= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v0    # "aux":I
    :cond_3
    if-gt p1, v2, :cond_4

    if-le p2, v1, :cond_6

    .line 199
    :cond_4
    const-string v3, "ContentRestriction"

    const-string v4, "image resolution exceeds restriction"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "image resolution exceeds restriction"

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/model/ContentRestriction;->resolutionException(Ljava/lang/String;)V

    .line 205
    :cond_5
    :goto_0
    return-void

    .line 201
    :cond_6
    if-lez p1, :cond_7

    if-gtz p2, :cond_5

    .line 202
    :cond_7
    const-string v3, "ContentRestriction"

    const-string v4, "Invalid image resolution"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "Invalid image resolution"

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/model/ContentRestriction;->contentRestrictionException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract checkNonTextMediaSize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation
.end method

.method public checkTextContentType(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/UnsupportContentTypeException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p1}, Lcom/motorola/messaging/mime/MmsContentType;->isTextType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content type is not a text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    return-void
.end method

.method public checkTextSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getTextSizeLimit()J

    move-result-wide v0

    const-string v2, "TEXT"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/motorola/messaging/model/ContentRestriction;->validateSize(IJLjava/lang/String;)V

    .line 167
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
    .line 113
    invoke-static {p1}, Lcom/motorola/messaging/mime/MmsContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/motorola/messaging/mime/MmsContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/model/ContentRestriction;->validateContentType(Ljava/lang/String;Ljava/util/List;)V

    .line 119
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content type is not a video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/model/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkVideoResolution(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxVideoWidth()I

    move-result v2

    .line 215
    .local v2, "widthLimit":I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxVideoHeight()I

    move-result v1

    .line 217
    .local v1, "heightLimit":I
    sget-boolean v3, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 218
    const-string v3, "ContentRestriction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkVideoResolution, widthLimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", heightLimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    if-le p1, p2, :cond_1

    if-gt v1, v2, :cond_2

    :cond_1
    if-le p2, p1, :cond_3

    if-le v2, v1, :cond_3

    .line 226
    :cond_2
    move v0, v1

    .line 227
    .local v0, "aux":I
    move v1, v2

    .line 228
    move v2, v0

    .line 229
    sget-boolean v3, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 230
    const-string v3, "ContentRestriction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkResolution (adjust portrait/landscape mode), widthLimit= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", heightLimit= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "aux":I
    :cond_3
    if-gt p1, v2, :cond_4

    if-le p2, v1, :cond_5

    .line 237
    :cond_4
    const-string v3, "ContentRestriction"

    const-string v4, "video resolution exceeds restriction"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v3, Lcom/motorola/messaging/model/ResolutionException;

    const-string v4, "video resolution exceeds restriction"

    invoke-direct {v3, v4}, Lcom/motorola/messaging/model/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_5
    if-lez p1, :cond_6

    if-gtz p2, :cond_7

    .line 240
    :cond_6
    const-string v3, "ContentRestriction"

    const-string v4, "Invalid video resolution"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v3, Lcom/motorola/messaging/model/ContentRestrictionException;

    const-string v4, "Invalid video resolution"

    invoke-direct {v3, v4}, Lcom/motorola/messaging/model/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_7
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsCommonVideoResolutionsOnlyEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 243
    sget-object v3, Lcom/motorola/messaging/model/ContentRestriction$1;->$SwitchMap$com$motorola$messaging$settings$MessageSettings$MmsMaxVideoResolution:[I

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxVideoResolution()Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 268
    :cond_8
    :pswitch_0
    return-void

    .line 249
    :pswitch_1
    const/16 v3, 0x280

    if-ne p1, v3, :cond_9

    const/16 v3, 0x1e0

    if-eq p2, v3, :cond_8

    .line 255
    :cond_9
    :pswitch_2
    const/16 v3, 0x140

    if-ne p1, v3, :cond_a

    const/16 v3, 0xf0

    if-eq p2, v3, :cond_8

    .line 261
    :cond_a
    :pswitch_3
    const/16 v3, 0xb0

    if-ne p1, v3, :cond_b

    const/16 v3, 0x90

    if-eq p2, v3, :cond_8

    .line 265
    :cond_b
    new-instance v3, Lcom/motorola/messaging/model/ContentRestrictionException;

    const-string v4, "Invalid video resolution"

    invoke-direct {v3, v4}, Lcom/motorola/messaging/model/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected contentRestrictionException(Ljava/lang/String;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v0, "ContentRestriction"

    const-string v1, "ContentRestrictionException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/motorola/messaging/model/ContentRestrictionException;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/model/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 72
    const-string v0, "ContentRestriction"

    const-string v1, "ExceedMessageSizeException"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lcom/motorola/messaging/model/ExceedMessageSizeException;

    invoke-direct {v0, p1}, Lcom/motorola/messaging/model/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeaderSizeLimit()J
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x2f44

    return-wide v0
.end method

.method public abstract getMmsMaxImageHeight()I
.end method

.method public abstract getMmsMaxImageWidth()I
.end method

.method public abstract getMmsMaxMessageSize()J
.end method

.method public abstract getNonTextMediaSizeLimit()J
.end method

.method public getTextSizeLimit()J
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method protected abstract resolutionException(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ResolutionException;
        }
    .end annotation
.end method

.method protected validateSize(IJLjava/lang/String;)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "sizeLimit"    # J
    .param p4, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 307
    sget-boolean v0, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "ContentRestriction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validateSize - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", media size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "ContentRestriction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    if-gez p1, :cond_1

    .line 313
    const-string v0, "Negative size"

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/ContentRestriction;->contentRestrictionException(Ljava/lang/String;)V

    .line 316
    :cond_1
    int-to-long v0, p1

    cmp-long v0, v0, p2

    if-lez v0, :cond_2

    .line 317
    const-string v0, "Exceed message size limitation"

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/ContentRestriction;->exceedMessageSizeException(Ljava/lang/String;)V

    .line 320
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/model/ContentRestriction;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 321
    const-string v0, "ContentRestriction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    sub-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_3
    return-void
.end method
