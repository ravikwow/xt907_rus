.class Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$2;
.super Ljava/lang/Object;
.source "ContactDetailPartialFieldPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$2;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$2;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$200(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 225
    return-void
.end method