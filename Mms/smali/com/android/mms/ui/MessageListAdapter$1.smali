.class Lcom/android/mms/ui/MessageListAdapter$1;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$1;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    instance-of v1, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 157
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 159
    .local v0, "mli":Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->unbind()V

    .line 161
    .end local v0    # "mli":Lcom/android/mms/ui/MessageListItem;
    :cond_0
    return-void
.end method
