.class Lcom/android/contacts/calllog/CallLogFragment$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment;->onCallsFetched(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$1;->val$listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
