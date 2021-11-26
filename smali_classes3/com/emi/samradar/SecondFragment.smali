.class public Lcom/emi/samradar/SecondFragment;
.super Landroidx/fragment/app/Fragment;
.source "SecondFragment.java"


# instance fields
.field private binding:Lcom/emi/samradar/databinding/FragmentSecondBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/emi/samradar/databinding/FragmentSecondBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/emi/samradar/databinding/FragmentSecondBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/emi/samradar/SecondFragment;->binding:Lcom/emi/samradar/databinding/FragmentSecondBinding;

    .line 27
    invoke-virtual {v0}, Lcom/emi/samradar/databinding/FragmentSecondBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emi/samradar/SecondFragment;->binding:Lcom/emi/samradar/databinding/FragmentSecondBinding;

    .line 50
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f080077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/skyfishjy/library/RippleBackground;

    .line 34
    .local v0, "rippleBackground":Lcom/skyfishjy/library/RippleBackground;
    const v1, 0x7f080062

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 35
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->startRippleAnimation()V

    .line 36
    iget-object v2, p0, Lcom/emi/samradar/SecondFragment;->binding:Lcom/emi/samradar/databinding/FragmentSecondBinding;

    iget-object v2, v2, Lcom/emi/samradar/databinding/FragmentSecondBinding;->buttonSecond:Landroid/widget/Button;

    new-instance v3, Lcom/emi/samradar/SecondFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/emi/samradar/SecondFragment$1;-><init>(Lcom/emi/samradar/SecondFragment;Lcom/skyfishjy/library/RippleBackground;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
