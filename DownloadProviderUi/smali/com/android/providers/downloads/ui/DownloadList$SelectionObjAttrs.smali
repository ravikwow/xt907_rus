.class Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
.super Ljava/lang/Object;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionObjAttrs"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mMediaUri:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mShared:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mShared:I

    .line 111
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMimeType:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMediaUri:Ljava/lang/String;

    .line 114
    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mShared:I

    .line 115
    return-void
.end method


# virtual methods
.method getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method getMediaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMediaUri:Ljava/lang/String;

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method getShareUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMediaUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMediaUri:Ljava/lang/String;

    const-string v2, "content://media/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMediaUri:Ljava/lang/String;

    const-string v2, "/file/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMediaUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    :cond_0
    if-nez v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 144
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    :cond_2
    const-string v1, "DownloadList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Share file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Share Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v0
.end method

.method getShared()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mShared:I

    return v0
.end method

.method setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mFileName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method setMediaUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaUri"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMediaUri:Ljava/lang/String;

    .line 133
    return-void
.end method

.method setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mMimeType:Ljava/lang/String;

    .line 164
    return-void
.end method

.method setShared(I)V
    .locals 0
    .param p1, "share"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->mShared:I

    .line 167
    return-void
.end method
