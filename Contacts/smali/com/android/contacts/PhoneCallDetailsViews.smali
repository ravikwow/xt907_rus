.class public final Lcom/android/contacts/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callCountView:Landroid/widget/TextView;

.field public final callTypeAndDate:Landroid/widget/TextView;

.field public final callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

.field public final callTypeView:Landroid/view/View;

.field public final cityidView:Landroid/widget/TextView;

.field public final labelView:Landroid/widget/TextView;

.field public final nameView:Landroid/widget/TextView;

.field public final numberView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/contacts/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "callTypeView"    # Landroid/view/View;
    .param p3, "callTypeIcons"    # Lcom/android/contacts/calllog/CallTypeIconsView;
    .param p4, "callTypeAndDate"    # Landroid/widget/TextView;
    .param p5, "numberView"    # Landroid/widget/TextView;
    .param p6, "labelView"    # Landroid/widget/TextView;
    .param p7, "cityidView"    # Landroid/widget/TextView;
    .param p8, "callCountView"    # Landroid/widget/TextView;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 44
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeView:Landroid/view/View;

    .line 45
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/contacts/calllog/CallTypeIconsView;

    .line 46
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lcom/android/contacts/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lcom/android/contacts/PhoneCallDetailsViews;->labelView:Landroid/widget/TextView;

    .line 50
    iput-object p7, p0, Lcom/android/contacts/PhoneCallDetailsViews;->cityidView:Landroid/widget/TextView;

    .line 51
    iput-object p8, p0, Lcom/android/contacts/PhoneCallDetailsViews;->callCountView:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/contacts/PhoneCallDetailsViews;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/contacts/calllog/CallTypeIconsView;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/contacts/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/contacts/PhoneCallDetailsViews;
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 63
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsViews;

    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070046

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070047

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/calllog/CallTypeIconsView;

    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f07004a

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07004b

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f070048

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/contacts/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method
