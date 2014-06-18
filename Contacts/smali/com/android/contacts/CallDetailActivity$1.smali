.class Lcom/android/contacts/CallDetailActivity$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$1;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$1;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$100(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    sget-object v2, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v1, v0, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 248
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$1;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
