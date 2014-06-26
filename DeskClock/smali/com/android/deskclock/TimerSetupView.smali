.class public Lcom/android/deskclock/TimerSetupView;
.super Landroid/widget/LinearLayout;
.source "TimerSetupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDelete:Landroid/widget/ImageButton;

.field protected mEnteredTime:Lcom/android/deskclock/timer/TimerView;

.field protected mInput:[I

.field protected mInputPointer:I

.field protected mInputSize:I

.field protected mLeft:Landroid/widget/Button;

.field protected final mNumbers:[Landroid/widget/Button;

.field protected mRight:Landroid/widget/Button;

.field protected mStart:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/TimerSetupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    .line 37
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    .line 38
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 52
    iput-object p1, p0, Lcom/android/deskclock/TimerSetupView;->mContext:Landroid/content/Context;

    .line 53
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040028

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    return-void
.end method


# virtual methods
.method protected doOnClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 145
    const/high16 v2, 0x7f0e0000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 147
    .local v1, "val":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 149
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 153
    iget v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v4, v4, v0

    aput v4, v2, v3

    .line 153
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 156
    :cond_2
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 157
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v5

    .line 158
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_0

    .line 165
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ltz v2, :cond_0

    .line 166
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    if-ge v0, v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget-object v3, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    iget v3, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    aput v5, v2, v3

    .line 170
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 171
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    goto :goto_0
.end method

.method public getTime()I
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0xe10

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x258

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/deskclock/TimerSetupView;->doOnClick(Landroid/view/View;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateStartButton()V

    .line 140
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateDeleteButton()V

    .line 141
    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, 0x7f0e006a

    const v9, 0x7f0e0069

    const v8, 0x7f0e0068

    .line 60
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 62
    const v5, 0x7f0e0079

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "v1":Landroid/view/View;
    const v5, 0x7f0e007a

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "v2":Landroid/view/View;
    const v5, 0x7f0e007b

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, "v3":Landroid/view/View;
    const v5, 0x7f0e007c

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, "v4":Landroid/view/View;
    const v5, 0x7f0e0078

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/timer/TimerView;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mEnteredTime:Lcom/android/deskclock/timer/TimerView;

    .line 67
    const v5, 0x7f0e0019

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    .line 68
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v12

    .line 72
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x2

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 73
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x3

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 75
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x4

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 76
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x5

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 77
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x6

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 79
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/4 v7, 0x7

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 80
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 81
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    const/16 v7, 0x9

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v7

    .line 83
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    .line 84
    iget-object v6, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    aput-object v5, v6, v11

    .line 85
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    .line 86
    invoke-virtual {p0, v11}, Lcom/android/deskclock/TimerSetupView;->setLeftRightEnabled(Z)V

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    aget-object v5, v5, v0

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    aget-object v5, v5, v0

    const-string v6, "%d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mNumbers:[Landroid/widget/Button;

    aget-object v5, v5, v0

    const/high16 v6, 0x7f0e0000

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    .line 94
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->reset()V

    .line 180
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateStartButton()V

    .line 181
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateDeleteButton()V

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->setMarginsAfterMeasure()V

    .line 102
    :cond_0
    return-void
.end method

.method public registerStartButton(Landroid/widget/Button;)V
    .locals 0
    .param p1, "start"    # Landroid/widget/Button;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/deskclock/TimerSetupView;->mStart:Landroid/widget/Button;

    .line 120
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 197
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    .line 198
    return-void
.end method

.method public restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 210
    .local v1, "input":[I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/deskclock/TimerSetupView;->mInputSize:I

    if-ge v0, v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v3, v1, v0

    aput v3, v2, v0

    .line 213
    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 214
    iput v0, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/TimerSetupView;->updateTime()V

    .line 219
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 206
    return-void
.end method

.method protected setLeftRightEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    if-nez p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected setMarginsAfterMeasure()V
    .locals 4

    .prologue
    .line 109
    const v3, 0x7f0e007f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "timerStart":Landroid/view/View;
    const v3, 0x7f0e0080

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "timerDisplay":Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 116
    .end local v0    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public updateDeleteButton()V
    .locals 3

    .prologue
    .line 130
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 131
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    :cond_0
    return-void

    .line 130
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStartButton()V
    .locals 3

    .prologue
    .line 123
    iget v1, p0, Lcom/android/deskclock/TimerSetupView;->mInputPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 124
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mStart:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mStart:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    :cond_0
    return-void

    .line 123
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTime()V
    .locals 7

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/deskclock/TimerSetupView;->mEnteredTime:Lcom/android/deskclock/timer/TimerView;

    iget-object v1, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-int/lit8 v4, v4, 0xa

    iget-object v5, p0, Lcom/android/deskclock/TimerSetupView;->mInput:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/deskclock/timer/TimerView;->setTime(IIII)V

    .line 190
    return-void
.end method
