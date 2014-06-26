.class Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;
.super Ljava/lang/Object;
.source "ReorderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/ReorderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderView"
.end annotation


# instance fields
.field final id:J

.field final position:I

.field target:Landroid/view/View;

.field final synthetic this$0:Lcom/android/deskclock/widget/sgv/ReorderHelper;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/widget/sgv/ReorderHelper;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "i"    # J

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->this$0:Lcom/android/deskclock/widget/sgv/ReorderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    .line 274
    iput p3, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    .line 275
    iput-wide p4, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->id:J

    .line 276
    return-void
.end method
