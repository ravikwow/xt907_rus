.class Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$2;
.super Ljava/lang/Object;
.source "ContactDetailVCardPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$2;->this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$2;->this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->access$200(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 200
    return-void
.end method
