.class public final Lcom/android/ex/chips/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecipientEditTextView:[I

.field public static final com_android_calendar_MultiStateButton:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1862
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    .line 1948
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/ex/chips/R$styleable;->com_android_calendar_MultiStateButton:[I

    return-void

    .line 1862
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
