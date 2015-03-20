.class Lcom/android/contacts/list/ContactTileListFragment$1;
.super Landroid/os/Handler;
.source "ContactTileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/android/contacts/list/ContactTileListFragment;->RUN_NEW_TASK:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsFinished:Z
    invoke-static {v0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$002(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    .line 80
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mNeedLoading:Z
    invoke-static {v0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$102(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    .line 81
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->LOADER_CONTACTS:I
    invoke-static {}, Lcom/android/contacts/list/ContactTileListFragment;->access$200()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$1;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileListFragment;->access$300(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 83
    :cond_0
    return-void
.end method
