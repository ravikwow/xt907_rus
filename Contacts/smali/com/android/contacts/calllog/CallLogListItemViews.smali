.class public final Lcom/android/contacts/calllog/CallLogListItemViews;
.super Ljava/lang/Object;
.source "CallLogListItemViews.java"


# instance fields
.field public final bottomDivider:Landroid/view/View;

.field public final dividerView:Landroid/view/View;

.field public final listHeaderTextView:Landroid/widget/TextView;

.field public final phoneCallDetailsViews:Lcom/android/contacts/PhoneCallDetailsViews;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public final secondaryActionView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/contacts/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .param p1, "quickContactView"    # Landroid/widget/QuickContactBadge;
    .param p2, "primaryActionView"    # Landroid/view/View;
    .param p3, "secondaryActionView"    # Landroid/widget/ImageView;
    .param p4, "dividerView"    # Landroid/view/View;
    .param p5, "phoneCallDetailsViews"    # Lcom/android/contacts/PhoneCallDetailsViews;
    .param p6, "listHeaderTextView"    # Landroid/widget/TextView;
    .param p7, "bottomDivider"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    .line 53
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    .line 54
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    .line 55
    iput-object p4, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    .line 56
    iput-object p5, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/contacts/PhoneCallDetailsViews;

    .line 57
    iput-object p6, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    .line 58
    iput-object p7, p0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    .line 59
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/contacts/calllog/CallLogListItemViews;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    new-instance v0, Lcom/android/contacts/calllog/CallLogListItemViews;

    new-instance v1, Landroid/widget/QuickContactBadge;

    invoke-direct {v1, p0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/contacts/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/android/contacts/PhoneCallDetailsViews;

    move-result-object v5

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/calllog/CallLogListItemViews;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/contacts/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/contacts/calllog/CallLogListItemViews;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 62
    new-instance v0, Lcom/android/contacts/calllog/CallLogListItemViews;

    const v1, 0x7f060041

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f060040

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f060048

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {p0}, Lcom/android/contacts/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/android/contacts/PhoneCallDetailsViews;

    move-result-object v5

    const v6, 0x7f060049

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f06003e

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/calllog/CallLogListItemViews;-><init>(Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/contacts/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;)V

    return-object v0
.end method
