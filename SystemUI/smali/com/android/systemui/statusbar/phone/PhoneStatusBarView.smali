.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "PhoneStatusBarView.java"


# instance fields
.field mButtonBounds:Landroid/graphics/Rect;

.field mCapturingEvents:Z

.field mEndAlpha:I

.field mEndTime:J

.field mNightMode:Z

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mStartAlpha:I

.field mStatusIcons:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 57
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v0

    .line 111
    .local v0, "alpha":I
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 114
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    if-eq v0, v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 117
    :cond_1
    return-void
.end method

.method getCurAlpha()I
    .locals 7

    .prologue
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 90
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 92
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x190

    div-long/2addr v3, v5

    long-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 70
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 76
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 78
    .local v0, "nightMode":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eq v2, v0, :cond_1

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    .line 81
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x80

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x190

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 85
    :cond_1
    return-void

    .end local v0    # "nightMode":Z
    :cond_2
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 62
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 63
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 64
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    move v0, v1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 104
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 105
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 173
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 176
    const/4 v1, 0x1

    .line 178
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 100
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
