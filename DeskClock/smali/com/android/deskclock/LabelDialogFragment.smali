.class public Lcom/android/deskclock/LabelDialogFragment;
.super Landroid/app/DialogFragment;
.source "LabelDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/LabelDialogFragment$ImeLegal;,
        Lcom/android/deskclock/LabelDialogFragment$TimerLabelDialogHandler;,
        Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;
    }
.end annotation


# instance fields
.field private mLabelBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/LabelDialogFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "x2"    # Lcom/android/deskclock/timer/TimerObj;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/LabelDialogFragment;->set(Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;
    .locals 3
    .param p0, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {v1}, Lcom/android/deskclock/LabelDialogFragment;-><init>()V

    .line 52
    .local v1, "frag":Lcom/android/deskclock/LabelDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "alarm"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v2, "tag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method

.method public static newInstance(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;
    .locals 3
    .param p0, "timer"    # Lcom/android/deskclock/timer/TimerObj;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v1, Lcom/android/deskclock/LabelDialogFragment;

    invoke-direct {v1}, Lcom/android/deskclock/LabelDialogFragment;-><init>()V

    .line 62
    .local v1, "frag":Lcom/android/deskclock/LabelDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "timer"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    const-string v2, "tag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method private set(Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "timer"    # Lcom/android/deskclock/timer/TimerObj;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string v0, ""

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    .line 130
    invoke-direct {p0, p1, p3, v0}, Lcom/android/deskclock/LabelDialogFragment;->set(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz p2, :cond_2

    .line 132
    invoke-direct {p0, p2, p3, v0}, Lcom/android/deskclock/LabelDialogFragment;->set(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v1, "No alarm or timer available."

    invoke-static {v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private set(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/deskclock/LabelDialogFragment$AlarmLabelDialogHandler;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, p1, p3, p2}, Lcom/android/deskclock/DeskClock;->onDialogLabelSet(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 148
    return-void

    .line 144
    :cond_0
    const-string v1, "Error! Activities that use LabelDialogFragment must implement AlarmLabelDialogHandler"

    invoke-static {v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private set(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "timer"    # Lcom/android/deskclock/timer/TimerObj;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/deskclock/LabelDialogFragment$TimerLabelDialogHandler;

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, p1, p3, p2}, Lcom/android/deskclock/DeskClock;->onDialogLabelSet(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 160
    return-void

    .line 156
    :cond_0
    const-string v1, "Error! Activities that use LabelDialogFragment must implement AlarmLabelDialogHandler or TimerLabelDialogHandler"

    invoke-static {v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 80
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "label"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "label":Ljava/lang/String;
    const-string v8, "alarm"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    .line 82
    .local v0, "alarm":Lcom/android/deskclock/provider/Alarm;
    const-string v8, "timer"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/timer/TimerObj;

    .line 83
    .local v6, "timer":Lcom/android/deskclock/timer/TimerObj;
    const-string v8, "tag"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "tag":Ljava/lang/String;
    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 87
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0e0046

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    .line 88
    iget-object v8, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v8, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    new-instance v9, Lcom/android/deskclock/LabelDialogFragment$1;

    invoke-direct {v9, p0, v0, v6, v5}, Lcom/android/deskclock/LabelDialogFragment$1;-><init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 100
    const v8, 0x7f0e0047

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 101
    .local v2, "cancelButton":Landroid/widget/Button;
    new-instance v8, Lcom/android/deskclock/LabelDialogFragment$2;

    invoke-direct {v8, p0}, Lcom/android/deskclock/LabelDialogFragment$2;-><init>(Lcom/android/deskclock/LabelDialogFragment;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v8, 0x7f0e0048

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 109
    .local v4, "setButton":Landroid/widget/Button;
    new-instance v8, Lcom/android/deskclock/LabelDialogFragment$3;

    invoke-direct {v8, p0, v0, v6, v5}, Lcom/android/deskclock/LabelDialogFragment$3;-><init>(Lcom/android/deskclock/LabelDialogFragment;Lcom/android/deskclock/provider/Alarm;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 119
    return-object v7
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 180
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->onPause(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 181
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/LabelDialogFragment;->mLabelBox:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/deskclock/LabelDialogFragment$ImeLegal;->onResume(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 175
    return-void
.end method
