.class Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 824
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 828
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 833
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 834
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(IZ)V

    .line 835
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V
    invoke-static {v1, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$200(Lcom/android/contacts/activities/PeopleActivity;I)V

    .line 836
    if-nez p1, :cond_1

    .line 837
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$300(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 841
    :cond_2
    return-void
.end method
