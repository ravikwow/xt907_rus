.class public Lcom/motorola/messaging/model/TextModel;
.super Lcom/motorola/messaging/model/MediaModel;
.source "TextModel.java"


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mCharset:I

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
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
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 151
    const/16 v0, 0x6a

    iput v0, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    .line 152
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
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
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    if-nez p6, :cond_0

    .line 142
    const/4 p6, 0x4

    .line 144
    :cond_0
    iput p6, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "text/plain"

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 57
    sget-boolean v0, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "TextModel"

    const-string v1, "TextModel"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/motorola/messaging/drm/DrmWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "charset"    # I
    .param p5, "wrapper"    # Lcom/motorola/messaging/drm/DrmWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/messaging/drm/DrmWrapper;)V

    .line 111
    sget-boolean v0, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "TextModel"

    const-string v1, "TextModel(wrapper)"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    if-nez p4, :cond_1

    .line 118
    const/4 p4, 0x4

    .line 120
    :cond_1
    iput p4, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "charset"    # I
    .param p5, "data"    # [B

    .prologue
    .line 88
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 89
    sget-boolean v0, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "TextModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextModel(data), src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-direct {p0, p5}, Lcom/motorola/messaging/model/TextModel;->extractTextFromData([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    .line 96
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "charset"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-nez p5, :cond_0

    .line 129
    const/4 p5, 0x4

    .line 131
    :cond_0
    iput p5, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .prologue
    .line 71
    const/16 v4, 0x6a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 72
    sget-boolean v0, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "TextModel"

    const-string v1, "TextModel (compose)"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/model/TextModel;->setDefaultRegion()V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/MediaModel;-><init>(Landroid/os/Parcel;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    .line 172
    return-void
.end method

.method private extractTextFromData([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 199
    if-eqz p1, :cond_1

    .line 201
    :try_start_0
    iget v2, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 212
    :goto_0
    return-object v2

    .line 204
    :cond_0
    iget v2, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    invoke-static {v2}, Lcom/motorola/messaging/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "TextModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static isSupportedType(Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;)Z
    .locals 4
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-boolean v2, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "TextModel"

    const-string v3, "isSupportedType"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    invoke-static {p0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 301
    .local v0, "cr":Lcom/motorola/messaging/model/ContentRestriction;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/ContentRestriction;->checkTextContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/model/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Lcom/motorola/messaging/model/UnsupportContentTypeException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateSize()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/motorola/messaging/model/MediaModel;->mSize:I

    .line 196
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

    .line 273
    sget-boolean v1, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "TextModel"

    const-string v2, "checkContentRestriction"

    invoke-static {v1, v3, v3, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 278
    .local v0, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkTextContentType(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public cloneText()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 1
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 269
    return-void
.end method

.method public isSaveable()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected setDefaultRegion()V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/motorola/messaging/model/RegionModel;->getDefaultTextRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mRegion:Lcom/motorola/messaging/model/RegionModel;

    .line 191
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v0, 0x6a

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsEncodingUTF8()Z

    move-result v1

    if-nez v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/messaging/mime/MmsContentType;->isASCII(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    :cond_1
    iput v0, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    .line 237
    :goto_0
    sget-boolean v0, Lcom/motorola/messaging/model/TextModel;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 238
    const-string v0, "TextModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText, text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/MediaModel;->setMediaSize(I)V

    .line 248
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/Model;->notifyModelChanged(Z)V

    .line 249
    return-void

    .line 234
    :cond_3
    iput v0, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    goto :goto_0

    .line 245
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/MediaModel;->setMediaSize(I)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/MediaModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 180
    iget v0, p0, Lcom/motorola/messaging/model/TextModel;->mCharset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcom/motorola/messaging/model/TextModel;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return-void
.end method
