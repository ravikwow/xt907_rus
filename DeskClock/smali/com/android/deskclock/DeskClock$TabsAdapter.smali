.class Lcom/android/deskclock/DeskClock$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DeskClock.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mFragmentTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMainActionBar:Landroid/app/ActionBar;

.field mPager:Landroid/support/v4/view/ViewPager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/DeskClock;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    .line 373
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    .line 374
    iput-object p2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    .line 376
    iput-object p3, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    .line 377
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 378
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 379
    return-void
.end method

.method private getRtlPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock$TabsAdapter;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    packed-switch p1, :pswitch_data_0

    .line 498
    .end local p1    # "position":I
    :cond_0
    :goto_0
    return p1

    .line 487
    .restart local p1    # "position":I
    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    .line 489
    :pswitch_1
    const/4 p1, 0x2

    goto :goto_0

    .line 491
    :pswitch_2
    const/4 p1, 0x0

    goto :goto_0

    .line 493
    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 479
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPageChanged(I)V
    .locals 5
    .param p1, "newPage"    # I

    .prologue
    .line 453
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 454
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 455
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockFragment;

    .line 456
    .local v0, "f":Lcom/android/deskclock/DeskClockFragment;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClockFragment;->onPageChanged(I)V

    goto :goto_0

    .line 460
    .end local v0    # "f":Lcom/android/deskclock/DeskClockFragment;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;-><init>(Lcom/android/deskclock/DeskClock$TabsAdapter;Ljava/lang/Class;I)V

    .line 396
    .local v0, "info":Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 397
    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 398
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 400
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 401
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->getRtlPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;

    .line 384
    .local v1, "info":Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->access$000(Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->access$100(Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockFragment;

    .line 386
    .local v0, "f":Lcom/android/deskclock/DeskClockFragment;
    return-object v0
.end method

.method public notifySelectedPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifyPageChanged(I)V

    .line 450
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 429
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 406
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const v3, 0x7f0e00ab

    const/4 v2, 0x1

    .line 411
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->getRtlPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 412
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifyPageChanged(I)V

    .line 415
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    # getter for: Lcom/android/deskclock/DeskClock;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$200(Lcom/android/deskclock/DeskClock;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_2

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    # getter for: Lcom/android/deskclock/DeskClock;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$200(Lcom/android/deskclock/DeskClock;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 419
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    # getter for: Lcom/android/deskclock/DeskClock;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$200(Lcom/android/deskclock/DeskClock;)Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/DeskClock;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    # getter for: Lcom/android/deskclock/DeskClock;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$200(Lcom/android/deskclock/DeskClock;)Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 434
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;

    .line 439
    .local v0, "info":Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    invoke-virtual {v0}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->getPosition()I

    move-result v1

    .line 440
    .local v1, "position":I
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->getRtlPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 441
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 446
    return-void
.end method

.method public registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 4
    .param p1, "frag"    # Lcom/android/deskclock/DeskClockFragment;

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const-string v1, "DeskClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add an existing fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/deskclock/DeskClockFragment;->onPageChanged(I)V

    .line 472
    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 2
    .param p1, "frag"    # Lcom/android/deskclock/DeskClockFragment;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method
