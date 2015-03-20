.class public Lcom/motorola/blur/setup/HomeActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;,
        Lcom/motorola/blur/setup/HomeActivity$UILocale;,
        Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_SHARED_PREF:Ljava/lang/String; = "com.motorola.setupwizard.controller.ACTION_RESET_SHARED_PREF"

.field private static final ACTION_SEND_BROADCAST_INTENT:Ljava/lang/String; = "com.motorola.setupwizard.controller.ACTION_SEND_BROADCAST_INTENT"

.field private static final CHOOSER_SPINNER:Ljava/lang/String; = "spinner"

.field private static final DEFAULT_CORNER_SIZE:I = 0x50

.field public static final DISABLE_CANCEL:Ljava/lang/String; = "DisableCancel"

.field public static final EXTRA_CALL_FROM_MAIN:Ljava/lang/String; = "call_from_main"

.field private static final INIT_ONCE_STATE:Ljava/lang/String; = "home_init_once"

.field private static final MSG_INIT_COMPLETED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "HomeActivity"

.field private static final UPDATE_REQUEST_ID:I = 0x1


# instance fields
.field private mActivityMan:Landroid/app/IActivityManager;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/motorola/blur/setup/HomeActivity$UILocale;",
            ">;"
        }
    .end annotation
.end field

.field private final mComparator:Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;

.field mCornerCount:I

.field mCornerSize:I

.field private mCurrentLayoutResID:I

.field mHandler:Landroid/os/Handler;

.field private mInitOnce:Z

.field private mProgramaticallySetSpinner:Z

.field private mShowSpinner:Z

.field private mStartButton:Landroid/widget/Button;

.field mTouchListen:Landroid/view/View$OnTouchListener;

.field protected mUpdatedLocale:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    .line 86
    iput-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mInitOnce:Z

    .line 87
    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mStartButton:Landroid/widget/Button;

    .line 91
    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mActivityMan:Landroid/app/IActivityManager;

    .line 92
    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 93
    iput-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mProgramaticallySetSpinner:Z

    .line 94
    iput-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mUpdatedLocale:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    .line 100
    iput v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mCornerCount:I

    .line 101
    iput v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    .line 126
    new-instance v0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;

    invoke-direct {v0, p0, p0}, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;-><init>(Lcom/motorola/blur/setup/HomeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/motorola/blur/setup/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/HomeActivity$1;-><init>(Lcom/motorola/blur/setup/HomeActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mTouchListen:Landroid/view/View$OnTouchListener;

    .line 176
    new-instance v0, Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;

    invoke-direct {v0}, Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mComparator:Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/HomeActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/HomeActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/HomeActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/setup/HomeActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/HomeActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mStartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/setup/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/HomeActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setPrivacyLink()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/HomeActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/setup/HomeActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    return-object v0
.end method

.method private connectSelector()V
    .locals 3

    .prologue
    .line 590
    iget v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v2, 0x7f030021

    if-eq v1, v2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_0

    .line 597
    iget-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    if-eqz v1, :cond_2

    .line 598
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 600
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 606
    :goto_1
    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_0

    .line 602
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030008

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    goto :goto_1
.end method

.method private disconnectSelector()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 624
    iget v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v3, 0x7f030021

    if-eq v2, v3, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    if-eqz v2, :cond_2

    .line 629
    const v2, 0x7f0c006b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 630
    .local v1, "spinner":Landroid/widget/Spinner;
    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 632
    invoke-virtual {v1, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 635
    .end local v1    # "spinner":Landroid/widget/Spinner;
    :cond_2
    const v2, 0x7f0c006c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 636
    .local v0, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 638
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private findCurrentLocale(Ljava/util/Locale;)I
    .locals 10
    .param p1, "currentLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v7, 0x0

    .line 771
    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mActivityMan:Landroid/app/IActivityManager;

    .line 773
    .local v1, "am":Landroid/app/IActivityManager;
    if-nez p1, :cond_0

    .line 774
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 775
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object p1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 777
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 778
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    .line 779
    .local v5, "numItems":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 780
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/setup/HomeActivity$UILocale;

    iget-object v6, v6, Lcom/motorola/blur/setup/HomeActivity$UILocale;->locale:Ljava/util/Locale;

    invoke-virtual {v6, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 787
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    .end local v4    # "i":I
    .end local v5    # "numItems":I
    :goto_1
    return v4

    .line 779
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    .restart local v4    # "i":I
    .restart local v5    # "numItems":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 784
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    .end local v4    # "i":I
    .end local v5    # "numItems":I
    :catch_0
    move-exception v3

    .line 785
    .local v3, "exception":Landroid/os/RemoteException;
    const-string v6, "HomeActivity"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "Can\'t get current configuration"

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .end local v3    # "exception":Landroid/os/RemoteException;
    :cond_2
    move v4, v7

    .line 787
    goto :goto_1
.end method

.method private initSelector()V
    .locals 4

    .prologue
    .line 565
    iget v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v3, 0x7f030021

    if-eq v2, v3, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    if-eqz v2, :cond_2

    .line 570
    const v2, 0x7f0c006b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 571
    .local v1, "spinner":Landroid/widget/Spinner;
    if-eqz v1, :cond_0

    .line 572
    iget-object v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 573
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 576
    .end local v1    # "spinner":Landroid/widget/Spinner;
    :cond_2
    const v2, 0x7f0c006c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 577
    .local v0, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 578
    iget-object v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 579
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 580
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private programaticallySetSelection(Landroid/widget/ListView;I)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;
    .param p2, "selection"    # I

    .prologue
    .line 693
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    .line 694
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 695
    return-void
.end method

.method private programaticallySetSelection(Landroid/widget/Spinner;I)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "selection"    # I

    .prologue
    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mProgramaticallySetSpinner:Z

    .line 687
    invoke-virtual {p1, p2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 688
    return-void
.end method

.method private refreshSelector(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 644
    iget v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v3, 0x7f030021

    if-eq v2, v3, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v2, :cond_2

    .line 649
    iget-object v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/motorola/blur/setup/HomeActivity;->mComparator:Lcom/motorola/blur/setup/HomeActivity$LocaleComparator;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 650
    iget-object v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 653
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    if-eqz v2, :cond_4

    .line 654
    const v2, 0x7f0c006b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 655
    .local v1, "spinner":Landroid/widget/Spinner;
    if-eqz v1, :cond_0

    .line 656
    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-nez v2, :cond_3

    .line 657
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->initSelector()V

    .line 660
    :cond_3
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/HomeActivity;->findCurrentLocale(Ljava/util/Locale;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/blur/setup/HomeActivity;->programaticallySetSelection(Landroid/widget/Spinner;I)V

    .line 661
    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->requestLayout()V

    goto :goto_0

    .line 664
    .end local v1    # "spinner":Landroid/widget/Spinner;
    :cond_4
    const v2, 0x7f0c006c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 665
    .local v0, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_5

    .line 667
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->initSelector()V

    .line 670
    :cond_5
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/HomeActivity;->findCurrentLocale(Ljava/util/Locale;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/motorola/blur/setup/HomeActivity;->programaticallySetSelection(Landroid/widget/ListView;I)V

    .line 671
    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0
.end method

.method private setAppropriateContentView()Z
    .locals 5

    .prologue
    const v4, 0x7f030021

    .line 515
    const/4 v1, 0x0

    .line 518
    .local v1, "returnValue":Z
    iget-object v3, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v3}, Lcom/motorola/blur/fsm/SetupFSM;->isShowWelcomeLayout()Z

    move-result v2

    .line 523
    .local v2, "showWelcomeLayout":Z
    if-eqz v2, :cond_3

    .line 524
    const v0, 0x7f030021

    .line 533
    .local v0, "layoutResID":I
    :goto_0
    iget v3, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    if-eq v0, v3, :cond_2

    .line 534
    iget v3, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    if-ne v3, v4, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->disconnectSelector()V

    .line 547
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 548
    iput v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    .line 550
    iget v3, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    if-ne v3, v4, :cond_1

    .line 552
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->connectSelector()V

    .line 555
    :cond_1
    const/4 v1, 0x1

    .line 561
    :cond_2
    return v1

    .line 526
    .end local v0    # "layoutResID":I
    :cond_3
    const v0, 0x7f03001a

    .restart local v0    # "layoutResID":I
    goto :goto_0
.end method

.method private setButtonListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 854
    const v2, 0x7f0c0007

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 855
    .local v1, "startButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    const v2, 0x7f0c0006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 857
    .local v0, "emergencyButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    const v2, 0x7f020012

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 861
    :cond_0
    return-void
.end method

.method private setPrivacyLink()V
    .locals 9

    .prologue
    .line 791
    const v6, 0x7f0c0025

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 792
    .local v5, "tv":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v6, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v6, p0}, Lcom/motorola/blur/fsm/SetupFSM;->isLearnMoreLinkShown(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 797
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 800
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 803
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 804
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 806
    .local v1, "method":Landroid/text/method/MovementMethod;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 807
    .local v3, "sb":Landroid/text/SpannableStringBuilder;
    const v6, 0x7f080030

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 808
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 809
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 810
    .local v4, "start":I
    const v6, 0x7f080031

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "linkText":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 812
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 813
    new-instance v6, Lcom/motorola/blur/setup/HomeActivity$2;

    invoke-direct {v6, p0}, Lcom/motorola/blur/setup/HomeActivity$2;-><init>(Lcom/motorola/blur/setup/HomeActivity;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    const/16 v8, 0x11

    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 819
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method private setTouchListeners()V
    .locals 2

    .prologue
    .line 867
    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 868
    .local v0, "welcomeLayout":Landroid/view/View;
    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mTouchListen:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 869
    return-void
.end method

.method private setUpLocaleSpinner()V
    .locals 20

    .prologue
    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    move/from16 v16, v0

    const v17, 0x7f030021

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 705
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/HomeActivity$UILocale;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 706
    const v16, 0x7f0c006b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 710
    .local v14, "selector":Landroid/view/View;
    :goto_1
    if-eqz v14, :cond_0

    .line 711
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 712
    const/4 v8, 0x0

    .line 714
    .local v8, "locales":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 719
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 720
    if-eqz v8, :cond_8

    array-length v9, v8

    .line 721
    .local v9, "numLocales":I
    :goto_2
    const/4 v11, 0x0

    .line 722
    .local v11, "prevLang":Ljava/lang/String;
    const/4 v10, 0x0

    .line 723
    .local v10, "prevCountry":Ljava/lang/String;
    const/4 v12, 0x0

    .line 724
    .local v12, "prevLoc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    const/4 v15, 0x0

    .line 725
    .local v15, "useDisplay":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 727
    .local v13, "resources":Landroid/content/res/Resources;
    if-nez v9, :cond_2

    .line 728
    const-string v16, "HomeActivity"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Number of locales on the device is 0"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 731
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v9, :cond_c

    .line 732
    const/4 v7, 0x0

    .line 733
    .local v7, "locale":Ljava/util/Locale;
    aget-object v5, v8, v4

    .line 734
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 735
    .local v6, "len":I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v6, v0, :cond_9

    .line 736
    new-instance v7, Ljava/util/Locale;

    .end local v7    # "locale":Ljava/util/Locale;
    invoke-direct {v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 742
    .restart local v7    # "locale":Ljava/util/Locale;
    :cond_3
    :goto_4
    if-eqz v7, :cond_6

    .line 747
    if-eqz v11, :cond_b

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 748
    if-eqz v12, :cond_5

    .line 749
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_a

    .line 750
    :cond_4
    invoke-virtual {v2, v12}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 760
    :cond_5
    :goto_5
    new-instance v12, Lcom/motorola/blur/setup/HomeActivity$UILocale;

    .end local v12    # "prevLoc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    invoke-direct {v12, v7, v15, v13}, Lcom/motorola/blur/setup/HomeActivity$UILocale;-><init>(Ljava/util/Locale;ZLandroid/content/res/Resources;)V

    .line 761
    .restart local v12    # "prevLoc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    invoke-virtual {v2, v12}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 762
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 763
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 731
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 708
    .end local v4    # "i":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v8    # "locales":[Ljava/lang/String;
    .end local v9    # "numLocales":I
    .end local v10    # "prevCountry":Ljava/lang/String;
    .end local v11    # "prevLang":Ljava/lang/String;
    .end local v12    # "prevLoc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    .end local v13    # "resources":Landroid/content/res/Resources;
    .end local v14    # "selector":Landroid/view/View;
    .end local v15    # "useDisplay":Z
    :cond_7
    const v16, 0x7f0c006c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "selector":Landroid/view/View;
    goto/16 :goto_1

    .line 715
    .restart local v8    # "locales":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 716
    .local v3, "exception":Ljava/lang/Exception;
    const-string v16, "HomeActivity"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Couldn\'t find locales on the device"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 720
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 737
    .restart local v4    # "i":I
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v6    # "len":I
    .restart local v7    # "locale":Ljava/util/Locale;
    .restart local v9    # "numLocales":I
    .restart local v10    # "prevCountry":Ljava/lang/String;
    .restart local v11    # "prevLang":Ljava/lang/String;
    .restart local v12    # "prevLoc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    .restart local v13    # "resources":Landroid/content/res/Resources;
    .restart local v15    # "useDisplay":Z
    :cond_9
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v6, v0, :cond_3

    .line 738
    new-instance v7, Ljava/util/Locale;

    .end local v7    # "locale":Ljava/util/Locale;
    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "locale":Ljava/util/Locale;
    goto :goto_4

    .line 752
    :cond_a
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/motorola/blur/setup/HomeActivity$UILocale;->setShouldUseDisplay(Z)V

    .line 753
    const/4 v15, 0x1

    goto :goto_5

    .line 757
    :cond_b
    const/4 v15, 0x0

    goto :goto_5

    .line 766
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "locale":Ljava/util/Locale;
    :cond_c
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/blur/setup/HomeActivity;->refreshSelector(Ljava/util/Locale;)V

    goto/16 :goto_0
.end method

.method private updateContentView()V
    .locals 3

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setAppropriateContentView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v1, 0x7f030021

    if-ne v0, v1, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/HomeActivity;->refreshSelector(Ljava/util/Locale;)V

    .line 388
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->updateWelcomeView()V

    .line 389
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->registerInitHandler(Landroid/os/Handler;I)V

    .line 390
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setPrivacyLink()V

    .line 393
    :cond_0
    return-void
.end method

.method private updateWelcomeView()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 824
    iget v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v2, 0x7f030021

    if-eq v1, v2, :cond_0

    .line 851
    :goto_0
    return-void

    .line 830
    :cond_0
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mStartButton:Landroid/widget/Button;

    .line 831
    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 833
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 834
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 835
    const/high16 v1, 0x42a00000

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    .line 836
    const-string v1, "HomeActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mCornerSize = "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/motorola/blur/setup/HomeActivity;->mCornerSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 839
    iget-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    if-eqz v1, :cond_1

    .line 841
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 842
    const v1, 0x7f0c006c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 849
    :goto_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setButtonListeners()V

    .line 850
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setTouchListeners()V

    goto :goto_0

    .line 845
    :cond_1
    const v1, 0x7f0c006b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 846
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->isLearnMoreLinkShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->setTosAccepted(Landroid/content/Context;Z)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->onNext(Landroid/app/Activity;I)V

    goto :goto_0

    .line 436
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->makeEmergencyCall()V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0006
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 409
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 410
    const-string v0, "HomeActivity"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onConfigurationChanged"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 411
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->disconnectSelector()V

    .line 412
    iget v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 413
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/HomeActivity;->refreshSelector(Ljava/util/Locale;)V

    .line 414
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->updateWelcomeView()V

    .line 415
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4}, Lcom/motorola/blur/fsm/SetupFSM;->registerInitHandler(Landroid/os/Handler;I)V

    .line 416
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setPrivacyLink()V

    .line 417
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 260
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 263
    .local v6, "provisioned":I
    if-ne v6, v8, :cond_0

    invoke-static {}, Lcom/motorola/blur/setup/SetupUtility;->isTabletFlow()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 264
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->tabletSetupUpgradeComplete(Landroid/app/Activity;)V

    .line 265
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 347
    :goto_0
    return-void

    .line 269
    :cond_0
    if-eqz p1, :cond_1

    .line 270
    const-string v9, "home_init_once"

    invoke-virtual {p1, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/motorola/blur/setup/HomeActivity;->mInitOnce:Z

    .line 273
    :cond_1
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isReady2GoInstalled(Landroid/content/Context;)Z

    move-result v3

    .line 275
    .local v3, "isReady2GoInstalled":Z
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isVerizonFlow(Landroid/content/Context;)Z

    move-result v5

    .line 276
    .local v5, "isVerizonFlow":Z
    invoke-static {}, Lcom/motorola/blur/setup/SetupUtility;->isTabletFlow()Z

    move-result v4

    .line 278
    .local v4, "isTabletFlow":Z
    iget-object v9, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v9, v3}, Lcom/motorola/blur/fsm/SetupFSM;->setReady2GoFlow(Z)V

    .line 279
    iget-object v9, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v9, v5}, Lcom/motorola/blur/fsm/SetupFSM;->setVerizonFlow(Z)V

    .line 280
    iget-object v9, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v9, v4}, Lcom/motorola/blur/fsm/SetupFSM;->setTabletFlow(Z)V

    .line 281
    const-string v9, "HomeActivity"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "onCreate - isVerizonFlow="

    aput-object v11, v10, v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v11, 0x2

    const-string v12, "; isTabletFlow="

    aput-object v12, v10, v11

    const/4 v11, 0x3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ; mInitOnce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget-boolean v12, p0, Lcom/motorola/blur/setup/HomeActivity;->mInitOnce:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 282
    iget-boolean v9, p0, Lcom/motorola/blur/setup/HomeActivity;->mInitOnce:Z

    if-nez v9, :cond_3

    .line 283
    iget-object v9, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    if-nez v3, :cond_2

    if-eqz v4, :cond_7

    :cond_2
    :goto_1
    invoke-virtual {v9, v7}, Lcom/motorola/blur/fsm/SetupFSM;->setShowWelcomeLayout(Z)V

    .line 308
    :cond_3
    invoke-virtual {p0, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 312
    iget-boolean v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mInitOnce:Z

    if-nez v7, :cond_5

    .line 313
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 314
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v7, "com.motorola.setupwizard.controller.ACTION_SEND_BROADCAST_INTENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 316
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v7, "com.motorola.setupwizard.controller.ACTION_RESET_SHARED_PREF"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_4
    iput-boolean v8, p0, Lcom/motorola/blur/setup/HomeActivity;->mInitOnce:Z

    .line 324
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v7, "spinner"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    .line 326
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setAppropriateContentView()Z

    .line 327
    iget v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v9, 0x7f030021

    if-ne v7, v9, :cond_6

    .line 329
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mActivityMan:Landroid/app/IActivityManager;

    .line 331
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->connectSelector()V

    .line 333
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->initSelector()V

    .line 334
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setUpLocaleSpinner()V

    .line 335
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->updateWelcomeView()V

    .line 338
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->hideBackButton()V

    .line 340
    iget-object v7, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    iget-object v9, p0, Lcom/motorola/blur/setup/HomeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v8}, Lcom/motorola/blur/fsm/SetupFSM;->registerInitHandler(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_7
    move v7, v8

    .line 283
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 397
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onDestroy()V

    .line 398
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->unregisterInitHandler(Landroid/os/Handler;)V

    .line 399
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HomeActivity;->setLocale()V

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/HomeActivity;->refreshSelector(Ljava/util/Locale;)V

    .line 466
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mProgramaticallySetSpinner:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mProgramaticallySetSpinner:Z

    .line 448
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HomeActivity;->setLocale()V

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/HomeActivity;->refreshSelector(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "skipSetupAction":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    iget-object v3, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/blur/fsm/SetupFSM;->setBackgroundSetupForQA(Z)V

    .line 474
    const v3, 0x7f0c0007

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 475
    .local v2, "startBtn":Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 477
    .end local v2    # "startBtn":Landroid/widget/Button;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 370
    iget v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v1, 0x7f030021

    if-ne v0, v1, :cond_0

    .line 371
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mActivityMan:Landroid/app/IActivityManager;

    .line 372
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->connectSelector()V

    .line 373
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->initSelector()V

    .line 374
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->setUpLocaleSpinner()V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->updateContentView()V

    .line 381
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 404
    const-string v0, "home_init_once"

    iget-boolean v1, p0, Lcom/motorola/blur/setup/HomeActivity;->mInitOnce:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onStart()V

    .line 356
    invoke-direct {p0}, Lcom/motorola/blur/setup/HomeActivity;->updateContentView()V

    .line 361
    return-void
.end method

.method public setLocale()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 484
    iget v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mCurrentLayoutResID:I

    const v8, 0x7f030021

    if-eq v7, v8, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity;->mActivityMan:Landroid/app/IActivityManager;

    .line 490
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 491
    .local v1, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .line 493
    .local v3, "loc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    iget-boolean v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mShowSpinner:Z

    if-eqz v7, :cond_3

    .line 494
    const v7, 0x7f0c006b

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 495
    .local v6, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "loc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    check-cast v3, Lcom/motorola/blur/setup/HomeActivity$UILocale;

    .line 503
    .end local v6    # "spinner":Landroid/widget/Spinner;
    .restart local v3    # "loc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 504
    iget-object v7, v3, Lcom/motorola/blur/setup/HomeActivity$UILocale;->locale:Ljava/util/Locale;

    iput-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 505
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 506
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 507
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mUpdatedLocale:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "loc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    :catch_0
    move-exception v2

    .line 510
    .local v2, "exception":Landroid/os/RemoteException;
    const-string v7, "HomeActivity"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Remote exception"

    aput-object v10, v8, v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 497
    .end local v2    # "exception":Landroid/os/RemoteException;
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "loc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    :cond_3
    const v7, 0x7f0c006c

    :try_start_1
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 498
    .local v4, "lv":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v5

    .line 499
    .local v5, "pos":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 500
    iget-object v7, p0, Lcom/motorola/blur/setup/HomeActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "loc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    check-cast v3, Lcom/motorola/blur/setup/HomeActivity$UILocale;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "loc":Lcom/motorola/blur/setup/HomeActivity$UILocale;
    goto :goto_1
.end method
