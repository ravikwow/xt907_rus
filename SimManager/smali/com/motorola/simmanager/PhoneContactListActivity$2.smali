.class Lcom/motorola/simmanager/PhoneContactListActivity$2;
.super Ljava/lang/Object;
.source "PhoneContactListActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/PhoneContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/PhoneContactListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/PhoneContactListActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 4
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 70
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$200(Lcom/motorola/simmanager/PhoneContactListActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->getGroupPosition(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$300(Lcom/motorola/simmanager/PhoneContactListActivity;Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "groupPos":I
    if-eq v0, p1, :cond_0

    .line 72
    move v0, p1

    .line 73
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mGroupNames:[Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$400(Lcom/motorola/simmanager/PhoneContactListActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    # setter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mCurrentGroupName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$202(Lcom/motorola/simmanager/PhoneContactListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    if-nez p1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mCursorAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v1}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$700(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/widget/CursorAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    iget-object v3, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # getter for: Lcom/motorola/simmanager/PhoneContactListActivity;->mClonedCursorAll:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$500(Lcom/motorola/simmanager/PhoneContactListActivity;)Landroid/database/Cursor;

    move-result-object v3

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->clonePhoneContactsCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$600(Lcom/motorola/simmanager/PhoneContactListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->initListConfig()V
    invoke-static {v1}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$900(Lcom/motorola/simmanager/PhoneContactListActivity;)V

    .line 82
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    invoke-virtual {v1}, Lcom/motorola/simmanager/SimManagerListActivity;->exitSearch()V

    .line 78
    iget-object v1, p0, Lcom/motorola/simmanager/PhoneContactListActivity$2;->this$0:Lcom/motorola/simmanager/PhoneContactListActivity;

    # invokes: Lcom/motorola/simmanager/PhoneContactListActivity;->startGroupsContactsQuery()V
    invoke-static {v1}, Lcom/motorola/simmanager/PhoneContactListActivity;->access$800(Lcom/motorola/simmanager/PhoneContactListActivity;)V

    goto :goto_0
.end method
