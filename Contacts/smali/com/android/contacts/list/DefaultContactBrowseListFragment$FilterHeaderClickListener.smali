.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V

    .line 135
    return-void
.end method
