.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addInCaseOfEmergencyHeader(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field final synthetic val$iceStartIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->val$iceStartIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->val$iceStartIntent:Landroid/content/Intent;

    const-string v1, "isLockMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->val$iceStartIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void
.end method
