.class Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;
.super Ljava/lang/Object;
.source "CitiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityViewHolder"
.end annotation


# instance fields
.field name:Landroid/widget/TextView;

.field remove:Landroid/widget/ImageView;

.field selected:Landroid/widget/CheckBox;

.field selectedPin:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;->this$1:Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;Lcom/android/deskclock/worldclock/CitiesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;
    .param p2, "x1"    # Lcom/android/deskclock/worldclock/CitiesActivity$1;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter$CityViewHolder;-><init>(Lcom/android/deskclock/worldclock/CitiesActivity$CityAdapter;)V

    return-void
.end method
