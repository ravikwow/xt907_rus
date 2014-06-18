.class public Lcom/android/providers/downloads/ui/DownloadAdapter;
.super Landroid/widget/CursorAdapter;
.source "DownloadAdapter.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mDateColumnId:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDescriptionColumnId:I

.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

.field private final mFileNameColumnId:I

.field private final mIdColumnId:I

.field private final mMediaTypeColumnId:I

.field private final mReasonColumnId:I

.field private mResources:Landroid/content/res/Resources;

.field private final mStatusColumnId:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mTitleColumnId:I

.field private final mTotalBytesColumnId:I


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 2
    .parameter "downloadList"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 70
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    .line 72
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 73
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 75
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    .line 76
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    .line 77
    const-string v0, "description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDescriptionColumnId:I

    .line 78
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    .line 79
    const-string v0, "reason"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    .line 80
    const-string v0, "total_size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    .line 81
    const-string v0, "media_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    .line 82
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    .line 84
    const-string v0, "local_filename"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    .line 86
    return-void
.end method

.method private getDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 142
    .local v0, date:Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStartOfToday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSizeText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 160
    .local v1, totalBytes:J
    const-string v0, ""

    .line 161
    .local v0, sizeText:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_0
    return-object v0
.end method

.method private getStartOfToday()Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 151
    .local v0, today:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 153
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 154
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 155
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getStatusStringId(I)I
    .locals 5
    .parameter "status"

    .prologue
    const v1, 0x7f070008

    .line 168
    sparse-switch p1, :sswitch_data_0

    .line 188
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :sswitch_0
    const v1, 0x7f07000a

    .line 185
    :goto_0
    :sswitch_1
    return v1

    .line 173
    :sswitch_2
    const v1, 0x7f070009

    goto :goto_0

    .line 180
    :sswitch_3
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 181
    .local v0, reason:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 183
    :pswitch_0
    const v1, 0x7f070007

    goto :goto_0

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 181
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private retrieveAndSetIcon(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 205
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/android/providers/downloads/DownloadDrmHelper;->getOriginalMimeType(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 212
    :goto_0
    const v0, 0x7f090006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    if-nez v1, :cond_0

    .line 260
    :goto_1
    return-void

    .line 219
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v4, "file"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 222
    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 224
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 226
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 237
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_7

    .line 238
    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_3

    .line 240
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_5

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 242
    :goto_3
    if-eqz v3, :cond_2

    iget-object v6, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    const-class v6, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, v2

    .line 248
    :cond_3
    :goto_4
    if-nez v1, :cond_4

    .line 249
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 252
    :cond_4
    if-eqz v1, :cond_6

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_6

    .line 253
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 240
    :cond_5
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_5

    :cond_7
    move-object v1, v2

    goto :goto_4

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private setTextForView(Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "parent"
    .parameter "textViewId"
    .parameter "text"

    .prologue
    .line 263
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 9
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 107
    instance-of v0, p1, Lcom/android/providers/downloads/ui/DownloadItem;

    if-nez v0, :cond_0

    .line 138
    .end local p1
    :goto_0
    return-void

    .line 111
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .local v1, downloadId:J
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/DownloadItem;->setData(JILjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->retrieveAndSetIcon(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 123
    :cond_1
    const v0, 0x7f090007

    invoke-direct {p0, p1, v0, v8}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 124
    const v0, 0x7f090008

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDescriptionColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 125
    const v0, 0x7f090009

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 129
    .local v6, status:I
    const/16 v0, 0x8

    if-ne v6, v0, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getDateString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, statusText:Ljava/lang/CharSequence;
    :goto_1
    const v0, 0x7f09000a

    invoke-direct {p0, p1, v0, v7}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/CharSequence;)V

    .line 136
    check-cast p1, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/DownloadItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v3, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->isDownloadSelected(J)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 132
    .end local v7           #statusText:Ljava/lang/CharSequence;
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v6}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStatusStringId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #statusText:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 276
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;I)V

    .line 277
    return-void
.end method

.method public newView()Landroid/view/View;
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    .line 102
    .local v0, view:Lcom/android/providers/downloads/ui/DownloadItem;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadItem;->setDownloadListObj(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 103
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 95
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 96
    return-void
.end method
