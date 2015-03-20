.class public Lcom/android/contacts/util/StreamItemEntry;
.super Ljava/lang/Object;
.source "StreamItemEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/util/StreamItemEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mComments:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;

.field private mDecoded:Z

.field private mDecodedComments:Ljava/lang/CharSequence;

.field private mDecodedText:Ljava/lang/CharSequence;

.field private final mIconRes:Ljava/lang/String;

.field private final mId:J

.field private final mLabelRes:Ljava/lang/String;

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemPhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mResPackage:Ljava/lang/String;

.field private final mText:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "comments"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "accountType"    # Ljava/lang/String;
    .param p8, "accountName"    # Ljava/lang/String;
    .param p9, "dataSet"    # Ljava/lang/String;
    .param p10, "resPackage"    # Ljava/lang/String;
    .param p11, "iconRes"    # Ljava/lang/String;
    .param p12, "labelRes"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    .line 71
    iput-object p3, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    .line 73
    iput-wide p5, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    .line 74
    iput-object p7, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    .line 75
    iput-object p8, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountName:Ljava/lang/String;

    .line 76
    iput-object p9, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    .line 77
    iput-object p10, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    .line 78
    iput-object p11, p0, Lcom/android/contacts/util/StreamItemEntry;->mIconRes:Ljava/lang/String;

    .line 79
    iput-object p12, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    .line 87
    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    .line 88
    const-string v0, "comments"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    .line 89
    const-string v0, "timestamp"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    .line 90
    const-string v0, "account_type"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    .line 91
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountName:Ljava/lang/String;

    .line 92
    const-string v0, "data_set"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    .line 93
    const-string v0, "res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    .line 94
    const-string v0, "icon"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mIconRes:Ljava/lang/String;

    .line 95
    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/android/contacts/util/StreamItemEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    .line 97
    return-void
.end method

.method private checkDecoded()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecoded:Z

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decodeHtml must have been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    return-void
.end method

.method public static createForTest(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/util/StreamItemEntry;
    .locals 13
    .param p0, "id"    # J
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "comments"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .param p6, "accountType"    # Ljava/lang/String;
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "dataSet"    # Ljava/lang/String;
    .param p9, "resPackage"    # Ljava/lang/String;
    .param p10, "iconRes"    # Ljava/lang/String;
    .param p11, "labelRes"    # Ljava/lang/String;
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/android/contacts/util/StreamItemEntry;

    move-wide v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/contacts/util/StreamItemEntry;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    .locals 1
    .param p1, "photoEntry"    # Lcom/android/contacts/util/StreamItemPhotoEntry;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public compareTo(Lcom/android/contacts/util/StreamItemEntry;)I
    .locals 4
    .param p1, "other"    # Lcom/android/contacts/util/StreamItemEntry;

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lcom/android/contacts/util/StreamItemEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/StreamItemEntry;->compareTo(Lcom/android/contacts/util/StreamItemEntry;)I

    move-result v0

    return v0
.end method

.method public decodeHtml(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-static {p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getImageGetter(Landroid/content/Context;)Landroid/text/Html$ImageGetter;

    move-result-object v0

    .line 161
    .local v0, "imageGetter":Landroid/text/Html$ImageGetter;
    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    invoke-static {p1, v1, v0, v2}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedText:Ljava/lang/CharSequence;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mComments:Ljava/lang/String;

    invoke-static {p1, v1, v0, v2}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedComments:Ljava/lang/CharSequence;

    .line 167
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecoded:Z

    .line 168
    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedComments()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/contacts/util/StreamItemEntry;->checkDecoded()V

    .line 177
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedComments:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDecodedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/contacts/util/StreamItemEntry;->checkDecoded()V

    .line 172
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mDecodedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mId:J

    return-wide v0
.end method

.method public getLabelRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mLabelRes:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemPhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/contacts/util/StreamItemEntry;->mTimestamp:J

    return-wide v0
.end method
