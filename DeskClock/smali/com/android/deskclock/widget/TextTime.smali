.class public Lcom/android/deskclock/widget/TextTime;
.super Landroid/widget/TextView;
.source "TextTime.java"


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAttached:Z

.field private mContentDescriptionFormat:Ljava/lang/String;

.field private mFormat:Ljava/lang/CharSequence;

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private final mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mHour:I

.field private mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "h:mm a"

    sput-object v0, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 28
    const-string v0, "H:mm"

    sput-object v0, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/TextTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/TextTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v1, Lcom/android/deskclock/widget/TextTime$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/deskclock/widget/TextTime$1;-><init>(Lcom/android/deskclock/widget/TextTime;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 67
    sget-object v1, Lcom/android/deskclock/R$styleable;->TextTime:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat12:Ljava/lang/CharSequence;

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat24:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    .line 76
    return-void

    .line 73
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/deskclock/widget/TextTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/TextTime;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/widget/TextTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/widget/TextTime;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    return-void
.end method

.method private chooseFormat()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 106
    .local v0, "format24Requested":Z
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    :goto_0
    iput-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    .line 111
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mContentDescriptionFormat:Ljava/lang/String;

    .line 112
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat24:Ljava/lang/CharSequence;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/deskclock/widget/TextTime;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    :goto_2
    iput-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat12:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/deskclock/widget/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method private updateTime()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/deskclock/widget/TextTime;->mHour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/deskclock/widget/TextTime;->mMinute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 158
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mContentDescriptionFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mContentDescriptionFormat:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 117
    iget-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    .line 119
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->registerObserver()V

    .line 120
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 127
    iget-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->unregisterObserver()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/widget/TextTime;->mAttached:Z

    .line 131
    :cond_0
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .param p1, "amPmFontSize"    # I

    .prologue
    .line 144
    invoke-static {p1}, Lcom/android/deskclock/Utils;->get12ModeFormat(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/TextTime;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {}, Lcom/android/deskclock/Utils;->get24ModeFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/TextTime;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat12:Ljava/lang/CharSequence;

    .line 87
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    .line 88
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    .line 89
    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/deskclock/widget/TextTime;->mFormat24:Ljava/lang/CharSequence;

    .line 100
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->chooseFormat()V

    .line 101
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    .line 102
    return-void
.end method

.method public setTime(II)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/deskclock/widget/TextTime;->mHour:I

    .line 150
    iput p2, p0, Lcom/android/deskclock/widget/TextTime;->mMinute:I

    .line 151
    invoke-direct {p0}, Lcom/android/deskclock/widget/TextTime;->updateTime()V

    .line 152
    return-void
.end method
