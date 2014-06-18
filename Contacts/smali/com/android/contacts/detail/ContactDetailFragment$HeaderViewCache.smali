.class Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewCache"
.end annotation


# instance fields
.field public final companyView:Landroid/widget/TextView;

.field public final displayNameView:Landroid/widget/TextView;

.field public final layoutResourceId:I

.field public final photoOverlayView:Landroid/view/View;

.field public final photoView:Landroid/widget/ImageView;

.field public final starredView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutResourceInflated"    # I

    .prologue
    .line 1415
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    const v0, 0x7f060042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    .line 1417
    const v0, 0x7f0600ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    .line 1418
    const v0, 0x7f06004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    .line 1419
    const v0, 0x7f060113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    .line 1420
    const v0, 0x7f0600b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/ImageView;

    .line 1421
    iput p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    .line 1422
    return-void
.end method


# virtual methods
.method public enablePhotoOverlay(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1429
    :cond_0
    return-void
.end method
