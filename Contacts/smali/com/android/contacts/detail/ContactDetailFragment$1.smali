.class Lcom/android/contacts/detail/ContactDetailFragment$1;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$1;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
