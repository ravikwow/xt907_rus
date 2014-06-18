.class Lcom/android/contacts/activities/DialtactsActivity$2;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 363
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DialtactsActivity"

    const-string v1, "onTabReselected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    const/4 v1, 0x1

    .line 330
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabSelected(). tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDuringSwipe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v3, v3, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v0, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v0, :cond_3

    .line 338
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab select. from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v3}, Lcom/android/contacts/activities/DialtactsActivity;->access$800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v2, v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$200(Lcom/android/contacts/activities/DialtactsActivity;Z)V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 349
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 353
    :cond_4
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$2;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$902(Lcom/android/contacts/activities/DialtactsActivity;I)I

    .line 359
    :cond_5
    return-void

    .line 343
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabUnselected(). tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    return-void
.end method
