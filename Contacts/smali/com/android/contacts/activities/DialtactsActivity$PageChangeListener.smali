.class Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mNextPosition:I

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 191
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 197
    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/DialtactsActivity$1;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 244
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "DialtactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next position is not specified correctly. Use current tab ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    .line 250
    :cond_1
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "DialtactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageScrollStateChanged() with SCROLL_STATE_IDLE. mCurrentPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 257
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 259
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v3, v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$200(Lcom/android/contacts/activities/DialtactsActivity;Z)V

    .line 260
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v3, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v3, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$300(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 261
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v2, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$300(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    .line 263
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 265
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 259
    goto :goto_1

    .line 269
    :pswitch_1
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "DialtactsActivity"

    const-string v3, "onPageScrollStateChanged() with SCROLL_STATE_DRAGGING"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 271
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto/16 :goto_0

    .line 275
    :pswitch_2
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "DialtactsActivity"

    const-string v3, "onPageScrollStateChanged() with SCROLL_STATE_SETTLING"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 277
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 206
    sget-boolean v1, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSelected: position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 208
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 218
    :cond_1
    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-ne v1, p1, :cond_2

    .line 219
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous position and next position became same ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 223
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    .line 224
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 228
    return-void
.end method
