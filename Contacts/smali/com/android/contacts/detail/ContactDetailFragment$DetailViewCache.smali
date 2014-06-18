.class Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final actionsViewContainer:Landroid/view/View;

.field public final data:Landroid/widget/TextView;

.field public final presenceIcon:Landroid/widget/ImageView;

.field public final primaryActionView:Landroid/view/View;

.field public final primaryIndicator:Landroid/view/View;

.field public final secondaryActionButton:Landroid/widget/ImageView;

.field public final secondaryActionDivider:Landroid/view/View;

.field public final secondaryActionViewContainer:Landroid/view/View;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "primaryActionClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "secondaryActionClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    const v0, 0x7f06006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    .line 1487
    const v0, 0x7f060002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    .line 1488
    const v0, 0x7f06006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    .line 1489
    const v0, 0x7f06006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 1491
    const v0, 0x7f060069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    .line 1492
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1493
    const v0, 0x7f06003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionView:Landroid/view/View;

    .line 1495
    const v0, 0x7f06006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    .line 1497
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    const v0, 0x7f06006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 1502
    const v0, 0x7f06006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    .line 1503
    return-void
.end method
