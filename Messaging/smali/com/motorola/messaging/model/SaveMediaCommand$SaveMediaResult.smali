.class public Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
.super Ljava/lang/Object;
.source "SaveMediaCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/model/SaveMediaCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveMediaResult"
.end annotation


# instance fields
.field private mError:I

.field private mFileName:Ljava/lang/String;

.field private mIsSavedToPhoneMemory:Z

.field private mSdCardFolderName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput p1, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mError:I

    .line 396
    return-void
.end method

.method synthetic constructor <init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/motorola/messaging/model/SaveMediaCommand$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/io/File;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(Landroid/net/Uri;Ljava/io/File;Z)V

    .line 400
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/io/File;Lcom/motorola/messaging/model/SaveMediaCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Lcom/motorola/messaging/model/SaveMediaCommand$1;

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/io/File;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "isSavedToPhoneMemory"    # Z

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mUri:Landroid/net/Uri;

    .line 404
    iput-boolean p3, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mIsSavedToPhoneMemory:Z

    .line 406
    if-eqz p2, :cond_0

    .line 407
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mFileName:Ljava/lang/String;

    .line 409
    if-nez p3, :cond_0

    .line 411
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mSdCardFolderName:Ljava/lang/String;

    .line 414
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/io/File;ZLcom/motorola/messaging/model/SaveMediaCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/motorola/messaging/model/SaveMediaCommand$1;

    .prologue
    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(Landroid/net/Uri;Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mError:I

    return v0
.end method

.method public getSavedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSdCardFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mSdCardFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public isSavedToPhoneMemory()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mIsSavedToPhoneMemory:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;->mError:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
