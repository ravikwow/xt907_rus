.class public final Lcom/motorola/messaging/model/VcardModel;
.super Lcom/motorola/messaging/model/TextModel;
.source "VcardModel.java"


# static fields
.field private static final LOCAL_LOG:Z


# instance fields
.field private mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/VcardModel;->LOCAL_LOG:Z

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
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Ljava/lang/String;)V

    .line 46
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
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/model/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "text/x-vcard"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/TextModel;-><init>(Landroid/os/Parcel;)V

    .line 91
    return-void
.end method

.method public static parseNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/motorola/messaging/model/VcardUtil;->getVcardName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected calculateSize()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->calculateSizeFromUri()V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/motorola/messaging/model/TextModel;->calculateSize()V

    goto :goto_0
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

    .line 138
    sget-boolean v1, Lcom/motorola/messaging/model/VcardModel;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "IcalModel"

    const-string v2, "checkContentRestriction"

    invoke-static {v1, v3, v3, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v0

    .line 143
    .local v0, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    iget-object v1, p0, Lcom/motorola/messaging/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/model/ContentRestriction;->checkCardContentType(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method protected ensurePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, ".vcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    :cond_0
    return-object p1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/motorola/messaging/model/VcardModel;->mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;

    if-nez v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/model/VcardUtil;->parseVCard(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/messaging/vcard/VCardEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/model/VcardModel;->mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/model/VcardModel;->mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;

    if-eqz v3, :cond_2

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "latitude":Ljava/lang/String;
    const/4 v2, 0x0

    .line 172
    .local v2, "longitude":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/messaging/model/VcardModel;->mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;

    invoke-virtual {v3}, Lcom/motorola/messaging/vcard/VCardEntry;->getGeoData()Lcom/motorola/messaging/vcard/VCardEntry$GeoData;

    move-result-object v0

    .line 173
    .local v0, "geoData":Lcom/motorola/messaging/vcard/VCardEntry$GeoData;
    if-eqz v0, :cond_1

    .line 174
    iget-object v1, v0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    .line 175
    iget-object v2, v0, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    .line 178
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .end local v0    # "geoData":Lcom/motorola/messaging/vcard/VCardEntry$GeoData;
    .end local v1    # "latitude":Ljava/lang/String;
    .end local v2    # "longitude":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/motorola/messaging/model/VcardModel;->mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/motorola/messaging/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/motorola/messaging/model/VcardUtil;->parseVCard(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/messaging/vcard/VCardEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/VcardModel;->mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/model/VcardModel;->mVCardEntry:Lcom/motorola/messaging/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/motorola/messaging/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/model/VcardModel;->ensurePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x5

    return v0
.end method

.method protected setDefaultRegion()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/model/TextModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    return-void
.end method
