.class final Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
.super Ljava/lang/Object;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/PinnedHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinnedHeader"
.end annotation


# instance fields
.field alpha:I

.field animating:Z

.field height:I

.field sourceY:I

.field state:I

.field targetTime:J

.field targetVisible:Z

.field targetY:I

.field view:Landroid/view/View;

.field visible:Z

.field y:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/widget/PinnedHeaderListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/widget/PinnedHeaderListView$1;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;-><init>()V

    return-void
.end method
