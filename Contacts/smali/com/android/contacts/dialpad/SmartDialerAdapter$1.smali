.class Lcom/android/contacts/dialpad/SmartDialerAdapter$1;
.super Ljava/lang/Object;
.source "SmartDialerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$1;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$1;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$000(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->showList(Z)V

    .line 416
    return-void
.end method
