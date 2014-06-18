.class public Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "VibrationPatternPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
.implements Ljava/lang/Runnable;


# instance fields
.field mClickedPos:I

.field private mHandler:Landroid/os/Handler;

.field private mSamplePatternPos:I

.field private final mVibrationPatternClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mVibrationPatternManager:Landroid/media/VibrationPatternManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 37
    iput v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    .line 39
    iput v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mSamplePatternPos:I

    .line 43
    new-instance v0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity$1;-><init>(Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;)V

    iput-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mVibrationPatternClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->vibratePattern(IJ)V

    return-void
.end method

.method private stopVibration()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mVibrationPatternManager:Landroid/media/VibrationPatternManager;

    invoke-virtual {v0}, Landroid/media/VibrationPatternManager;->stopVibration()V

    .line 139
    return-void
.end method

.method private vibratePattern(IJ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "delayMs"    # J

    .prologue
    .line 132
    iget-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iput p1, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mSamplePatternPos:I

    .line 134
    iget-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 106
    if-ne p2, v4, :cond_1

    const/4 v1, 0x1

    .line 107
    .local v1, "positiveResult":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, "data":Landroid/content/Intent;
    iget v2, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    if-ltz v2, :cond_0

    .line 110
    const-string v2, "com.motorola.intent.extra.identifier"

    iget v3, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :cond_0
    invoke-virtual {p0, v4, v0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    .end local v0    # "data":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->finish()V

    .line 117
    return-void

    .end local v1    # "positiveResult":Z
    :cond_1
    move v1, v2

    .line 106
    goto :goto_0

    .line 114
    .restart local v1    # "positiveResult":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->setResult(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "in":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 65
    const-string v2, "clicked_pos"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    .line 71
    :cond_0
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v2, Landroid/media/VibrationPatternManager;

    invoke-direct {v2, p0}, Landroid/media/VibrationPatternManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mVibrationPatternManager:Landroid/media/VibrationPatternManager;

    .line 73
    iget-object v1, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 74
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 75
    iget-object v2, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mVibrationPatternClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 77
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 78
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 81
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 83
    const-string v2, "com.motorola.intent.extra.picker_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 84
    iget-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 85
    const v2, 0x7f0b00b9

    invoke-virtual {p0, v2}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->setupAlert()V

    .line 88
    return-void

    .line 67
    .end local v1    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    const-string v2, "com.motorola.intent.extra.identifier"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "com.motorola.intent.extra.identifier"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 124
    const-wide/16 v0, 0x12c

    invoke-direct {p0, p3, v0, v1}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->vibratePattern(IJ)V

    .line 125
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 129
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 160
    invoke-direct {p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->stopVibration()V

    .line 161
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v1, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 99
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 154
    invoke-direct {p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->stopVibration()V

    .line 155
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->stopVibration()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mVibrationPatternManager:Landroid/media/VibrationPatternManager;

    iget v1, p0, Lcom/motorola/android/systemui/media/VibrationPatternPickerActivity;->mSamplePatternPos:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/VibrationPatternManager;->vibrate(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method
