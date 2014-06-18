.class public Lcom/android/providers/downloads/ui/DownloadItem;
.super Landroid/widget/GridLayout;
.source "DownloadItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static CHECKMARK_AREA:F


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDownloadId:J

.field private mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

.field private mFileName:Ljava/lang/String;

.field private mIsInDownEvent:Z

.field private mMimeType:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/high16 v0, -0x40800000

    sput v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 56
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 51
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 46
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->initialize()V

    .line 47
    return-void
.end method

.method private inCheckArea(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/providers/downloads/ui/DownloadItem;->CHECKMARK_AREA:F

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 69
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->postInvalidate()V

    .line 124
    :goto_1
    return v0

    .line 98
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadItem;->inCheckArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    goto :goto_0

    .line 109
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadItem;->inCheckArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->toggle()V

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadItem;->sendAccessibilityEvent(I)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :cond_1
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mIsInDownEvent:Z

    goto :goto_0

    .line 121
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadId:J

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/DownloadList;->onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList;->getCurrentView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mPosition:I

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 138
    return-void
.end method

.method public setData(JILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadId"    # J
    .param p3, "position"    # I
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadId:J

    .line 73
    iput p3, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mPosition:I

    .line 74
    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mFileName:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mMimeType:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->isDownloadSelected(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public setDownloadListObj(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .param p1, "downloadList"    # Lcom/android/providers/downloads/ui/DownloadList;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadItem;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadList;

    .line 83
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadItem;->setChecked(Z)V

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
