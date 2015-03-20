.class Lcom/android/contacts/dialpad/DialpadFragment$3;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/DialpadFragment;->initSmartDialer(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;

.field final synthetic val$mList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 2146
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$3;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/android/contacts/dialpad/DialpadFragment$3;->val$mList:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2148
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$3;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$3;->val$mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 2149
    return-void

    .line 2148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
