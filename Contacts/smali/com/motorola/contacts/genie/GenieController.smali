.class public Lcom/motorola/contacts/genie/GenieController;
.super Ljava/lang/Object;
.source "GenieController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGMQuestId:I

.field private mCurrentQuest:I

.field private mCurrentQuestViewer:Landroid/widget/ViewFlipper;

.field private mCurrentScreenFrame:I

.field private mCurrentTab:I

.field private mGenieDBUpdateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mParentView:Landroid/view/ViewGroup;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQuestScreenNavigators:[[I

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/ViewGroup;
    .param p3, "gmQuest"    # I
    .param p4, "contactsQuestType"    # I
    .param p5, "activity_info"    # I

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    .line 50
    iput v2, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentTab:I

    .line 67
    iput-object p1, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/motorola/contacts/genie/GenieController;->mRootView:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mParentView:Landroid/view/ViewGroup;

    .line 70
    invoke-static {p5, p4, p1}, Lcom/motorola/contacts/genie/GenieUtils;->getQuestScreenViewer(IILandroid/content/Context;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    .line 71
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iput p4, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuest:I

    .line 73
    iput p3, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentGMQuestId:I

    .line 74
    iput v2, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    .line 75
    invoke-static {p5, p4}, Lcom/motorola/contacts/genie/GenieUtils;->getQuestScreenNavigatorButtons(II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mQuestScreenNavigators:[[I

    .line 76
    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->setUpPhoneStateListener()V

    .line 77
    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->setUpCurrentScreen()V

    .line 78
    invoke-virtual {p0}, Lcom/motorola/contacts/genie/GenieController;->showGenieCling()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/genie/GenieController;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    iget v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    return v0
.end method

.method static synthetic access$008(Lcom/motorola/contacts/genie/GenieController;)I
    .locals 2
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    iget v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/contacts/genie/GenieController;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/contacts/genie/GenieController;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->completeQuest()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/contacts/genie/GenieController;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->setUpCurrentScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/contacts/genie/GenieController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/contacts/genie/GenieController;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    iget v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentGMQuestId:I

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/contacts/genie/GenieController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/contacts/genie/GenieController;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/genie/GenieController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->sendCheckinDBIntent()V

    return-void
.end method

.method private completeQuest()V
    .locals 12

    .prologue
    .line 211
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-direct {v1, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 212
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    const v10, 0x7f0c02a2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    iget-object v9, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuest:I

    invoke-static {v10}, Lcom/motorola/contacts/genie/GenieUtils;->getQuestCompleteDialogMessage(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "questCompleteStrings":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 216
    .local v2, "dialog":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "dialog":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v3, v9, [Ljava/lang/CharSequence;

    .line 219
    .local v3, "dialogs":[Ljava/lang/CharSequence;
    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 220
    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 223
    .local v7, "questCompleteDlg":Landroid/app/AlertDialog;
    const/4 v9, -0x2

    iget-object v10, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    const v11, 0x7f0c02a3

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/motorola/contacts/genie/GenieController$3;

    invoke-direct {v11, p0}, Lcom/motorola/contacts/genie/GenieController$3;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    invoke-virtual {v7, v9, v10, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 231
    const/4 v9, -0x1

    iget-object v10, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuest:I

    invoke-static {v11}, Lcom/motorola/contacts/genie/GenieUtils;->getQuestDismisserButton(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/motorola/contacts/genie/GenieController$4;

    invoke-direct {v11, p0}, Lcom/motorola/contacts/genie/GenieController$4;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    invoke-virtual {v7, v9, v10, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 239
    new-instance v9, Lcom/motorola/contacts/genie/GenieController$5;

    invoke-direct {v9, p0}, Lcom/motorola/contacts/genie/GenieController$5;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    invoke-virtual {v7, v9}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 245
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 246
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 247
    return-void
.end method

.method private getNavigator()I
    .locals 5

    .prologue
    .line 298
    iget-object v3, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, "currentView":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ViewFlipper;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 300
    check-cast v1, Landroid/widget/ViewFlipper;

    .line 301
    .local v1, "currentScreenFlipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    .line 302
    .local v0, "currentFlip":I
    iget-object v3, p0, Lcom/motorola/contacts/genie/GenieController;->mQuestScreenNavigators:[[I

    iget v4, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentTab:I

    aget v3, v3, v4

    .line 305
    .end local v0    # "currentFlip":I
    .end local v1    # "currentScreenFlipper":Landroid/widget/ViewFlipper;
    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/motorola/contacts/genie/GenieController;->mQuestScreenNavigators:[[I

    iget v4, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    goto :goto_0
.end method

.method private sendCheckinDBIntent()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.genie.QUEST_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "quest_id"

    iget v2, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentGMQuestId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string v1, "quest_status"

    const-string v2, "COMPLETED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "com.motorola.genie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method private setUpCurrentScreen()V
    .locals 4

    .prologue
    .line 88
    iget-object v2, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    iget v3, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentScreenFrame:I

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 89
    iget-object v2, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "currentView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 91
    check-cast v0, Landroid/widget/ViewFlipper;

    .line 92
    .local v0, "currentScreenFlipper":Landroid/widget/ViewFlipper;
    iget v2, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentTab:I

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 94
    .end local v0    # "currentScreenFlipper":Landroid/widget/ViewFlipper;
    :cond_0
    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->setUpNavigator()V

    .line 95
    return-void
.end method

.method private setUpNavigator()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->getNavigator()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "navigatorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Lcom/motorola/contacts/genie/GenieController$1;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/genie/GenieController$1;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    return-void
.end method

.method private setUpPhoneStateListener()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 163
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/motorola/contacts/genie/GenieController$2;

    invoke-direct {v1, p0}, Lcom/motorola/contacts/genie/GenieController$2;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    iput-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 172
    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 173
    return-void
.end method


# virtual methods
.method public getCurrentGMQuest()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentGMQuestId:I

    return v0
.end method

.method public getCurrentQuest()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuest:I

    return v0
.end method

.method public hideGenieCling()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mRootView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/motorola/contacts/genie/GenieController;->mHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method public showCannotCompleteQuestDialog()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 253
    iget v4, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuest:I

    invoke-static {v4}, Lcom/motorola/contacts/genie/GenieUtils;->getQuestIncompleteDialogTitle(I)I

    move-result v3

    .line 254
    .local v3, "titleId":I
    iget v4, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuest:I

    invoke-static {v4}, Lcom/motorola/contacts/genie/GenieUtils;->getQuestIncompleteDialogMessage(I)I

    move-result v1

    .line 255
    .local v1, "messageId":I
    if-eq v3, v5, :cond_0

    if-eq v1, v5, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/motorola/contacts/genie/GenieController;->hideGenieCling()V

    .line 258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 259
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 262
    .local v2, "questIncompleteDlg":Landroid/app/AlertDialog;
    const/4 v4, -0x2

    iget-object v5, p0, Lcom/motorola/contacts/genie/GenieController;->mContext:Landroid/content/Context;

    const v6, 0x7f0c02a3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/motorola/contacts/genie/GenieController$6;

    invoke-direct {v6, p0}, Lcom/motorola/contacts/genie/GenieController$6;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 270
    new-instance v4, Lcom/motorola/contacts/genie/GenieController$7;

    invoke-direct {v4, p0}, Lcom/motorola/contacts/genie/GenieController$7;-><init>(Lcom/motorola/contacts/genie/GenieController;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 276
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 277
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 279
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "questIncompleteDlg":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public showGenieCling()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/motorola/contacts/genie/GenieController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    :cond_0
    return-void
.end method

.method public updateGenieDataBase()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/genie/GenieController$GenieDataBaseUpdateTask;-><init>(Lcom/motorola/contacts/genie/GenieController;Lcom/motorola/contacts/genie/GenieController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/genie/GenieController;->mGenieDBUpdateTask:Landroid/os/AsyncTask;

    .line 286
    return-void
.end method

.method public updateScreenWithCurrentTab(I)V
    .locals 3
    .param p1, "tabPos"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentTab:I

    .line 191
    iget-object v2, p0, Lcom/motorola/contacts/genie/GenieController;->mCurrentQuestViewer:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "currentView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ViewFlipper;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 193
    check-cast v0, Landroid/widget/ViewFlipper;

    .line 194
    .local v0, "currentScreenFlipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 195
    invoke-direct {p0}, Lcom/motorola/contacts/genie/GenieController;->setUpNavigator()V

    .line 197
    .end local v0    # "currentScreenFlipper":Landroid/widget/ViewFlipper;
    :cond_0
    return-void
.end method
